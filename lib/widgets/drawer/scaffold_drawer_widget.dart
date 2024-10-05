import 'package:flutter/material.dart';

import 'drawer_widget.dart';

class InheritedDrawer extends InheritedWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const InheritedDrawer({required super.child, required this.scaffoldKey});

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }

  static InheritedDrawer? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedDrawer>();
  }

  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }
}

class DrawerScaffold extends StatelessWidget {
  final Widget? body;
  final PreferredSizeWidget? appBar;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  DrawerScaffold({super.key, this.body, this.appBar});

  @override
  Widget build(BuildContext context) {
    return InheritedDrawer(
      scaffoldKey: scaffoldKey,
      child: Scaffold(
        body: body,
        appBar: appBar,
        key: scaffoldKey,
        drawer: MyDrawer(),
      ),
    );
  }
}
