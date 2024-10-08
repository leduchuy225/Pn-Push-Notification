import 'dart:isolate';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_notification_listener/flutter_notification_listener.dart';
import 'package:get/get.dart';
import 'package:pn_push_notification/routers/main_router.dart';
import 'package:pn_push_notification/theme/app_theme.dart';
import 'package:pn_push_notification/ui/main/main_screen_utils.dart';
import 'package:pn_push_notification/widgets/appbar/appbar_widget.dart';
import 'package:pn_push_notification/widgets/checkbox/checkbox_controller.dart';
import 'package:pn_push_notification/widgets/loading/loading_widget.dart';

import '../../services/sqlite_service.dart';
import 'widgets/notification_item.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _isStartedNotifier = ValueNotifier<bool>(false);
  final _notificationEventNotifier = ValueNotifier<List<NotificationEvent>>([]);

  final port = ReceivePort();

  final checkboxController = MyCheckboxController();

  @override
  void initState() {
    super.initState();
    initPlatformState();

    WidgetsBinding.instance.addPostFrameCallback((data) async {
      await setDefaultValueForService();
      _notificationEventNotifier.value = await NotificationEventQuery.getAll();
    });
  }

  // we must use static method, to handle in background
  // prevent dart from stripping out this function on release build in Flutter 3.x
  @pragma('vm:entry-point')
  static Future<void> _callback(NotificationEvent evt) async {
    await NotificationEventQuery.insert(evt);

    print('send evt to ui: $evt');

    final SendPort? send = IsolateNameServer.lookupPortByName(NameServer);
    if (send == null) {
      return;
    }
    send.send(evt);
  }

  void onData(NotificationEvent event) {
    _notificationEventNotifier.value = [
      event,
      ..._notificationEventNotifier.value
    ];
  }

  void initPlatformState() {
    NotificationsListener.initialize(callbackHandle: _callback);

    // this can fix restart<debug> can't handle error
    IsolateNameServer.removePortNameMapping(NameServer);
    IsolateNameServer.registerPortWithName(port.sendPort, NameServer);

    port.listen((message) => onData(message));

    // don't use the default receivePort
    // NotificationsListener.receivePort.listen((evt) => onData(evt));

    // final isRunning = (await NotificationsListener.isRunning) ?? false;
    // print("""Service is ${!isRunning ? "not " : ""}already running""");

    // _isStartedNotifier.value = isRunning;
  }

  Future<void> setDefaultValueForService() async {
    final isRunning = (await NotificationsListener.isRunning) ?? false;
    print("""Service is ${!isRunning ? "not " : ""}already running""");

    _isStartedNotifier.value = isRunning;
  }

  Future<void> startListening() async {
    print('start listening');

    MyLoading.show();

    final hasPermission = (await NotificationsListener.hasPermission) ?? false;
    if (!hasPermission) {
      MyLoading.dismiss();
      print('no permission, so open settings');
      NotificationsListener.openPermissionSettings();
      return;
    }

    final isRunning = (await NotificationsListener.isRunning) ?? false;

    if (!isRunning) {
      await NotificationsListener.startService(
        foreground: true,
        title: 'Listener Running',
        description: 'Welcome to having me',
      );
    }

    MyLoading.dismiss();
    _isStartedNotifier.value = isRunning;
  }

  Future<void> stopListening() async {
    print('stop listening');

    MyLoading.show();

    await NotificationsListener.stopService();

    _isStartedNotifier.value = false;
    MyLoading.dismiss();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: const Text('PN Push Notification'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              Get.toNamed(MainRouter.SETTING);
            },
          )
        ],
      ),
      floatingActionButton: ValueListenableBuilder(
        valueListenable: _isStartedNotifier,
        builder: (context, value, child) {
          return FloatingActionButton(
            backgroundColor: value ? Colors.red : Colors.blue,
            child: value
                ? const Icon(Icons.pause_circle, color: Colors.white)
                : const Icon(Icons.not_started, color: Colors.white),
            onPressed: () async {
              value ? await stopListening() : await startListening();
            },
          );
        },
      ),
      body: CustomScrollView(
        slivers: [
          // SliverToBoxAdapter(
          //   child: Column(
          //     children: [
          //       TextButton(
          //         onPressed: () => throw Exception(),
          //         child: const Text('Throw Test Exception'),
          //       ),
          //     ],
          //   ),
          // ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppTheme.defaultHorizontal,
            ),
            sliver: ValueListenableBuilder(
              valueListenable: _notificationEventNotifier,
              builder: (context, value, child) {
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return NotificationEventItem(item: value[index]);
                    },
                    childCount: value.length,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
