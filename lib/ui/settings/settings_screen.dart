import 'package:flutter/material.dart';
import 'package:installed_apps/app_info.dart';
import 'package:installed_apps/installed_apps.dart';
import 'package:open_settings_plus/open_settings_plus.dart';
import 'package:pn_push_notification/theme/app_theme.dart';
import 'package:pn_push_notification/widgets/appbar/appbar_widget.dart';
import 'package:pn_push_notification/widgets/loading/loading_widget.dart';
import 'package:pn_push_notification/widgets/switch/switch_widget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  List<AppInfo> _apps = [];
  final _androidSettings = const OpenSettingsPlusAndroid();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((data) async {
      MyLoading.show();
      await InstalledApps.getInstalledApps(true, true).then(
        (apps) {
          MyLoading.dismiss();
          setState(() => _apps = apps);
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: const Text('Settings'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppTheme.defaultHorizontal,
          ),
          child: Column(
            children: [
              const SizedBox(height: 12),
              InkWell(
                onTap: _androidSettings.appSettings,
                child: const Card(
                  margin: EdgeInsets.symmetric(vertical: 6),
                  child: ListTile(
                    title: Text('Open appSettings'),
                    leading: Icon(Icons.settings_applications_rounded),
                  ),
                ),
              ),
              InkWell(
                onTap: _androidSettings.applicationDetails,
                child: const Card(
                  margin: EdgeInsets.symmetric(vertical: 6),
                  child: ListTile(
                    title: Text('Open applicationDetails'),
                    leading: Icon(Icons.settings_applications_rounded),
                  ),
                ),
              ),
              InkWell(
                onTap: _androidSettings.applicationSettings,
                child: const Card(
                  margin: EdgeInsets.symmetric(vertical: 6),
                  child: ListTile(
                    title: Text('Open applicationSettings'),
                    leading: Icon(Icons.settings_applications_rounded),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              ..._apps.map((app) {
                return Card(
                  child: ListTile(
                    title: Text(app.name),
                    subtitle: Text(app.packageName),
                    trailing: MySwitch(onChanged: (value) {}),
                    leading: app.icon != null ? Image.memory(app.icon!) : null,
                  ),
                );
              }).toList(),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
