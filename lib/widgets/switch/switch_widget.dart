import 'package:flutter/material.dart';

import '../../data/models/widget_interface.dart';
import 'switch_controller.dart';

class MySwitch extends StatefulWidget {
  final bool value;
  final void Function(bool?) onChanged;
  final MySwitchController? controller;

  const MySwitch({
    super.key,
    this.controller,
    this.value = false,
    required this.onChanged,
  });

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch>
    with Controller<MySwitchController> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    if (widgetController == null) {
      localController = MySwitchController();
    }

    mainController.value ??= widget.value;

    _value = mainController.value ?? false;

    mainController.addListener(() {
      print('Value $_value');
      print('Main controller value: ${mainController.value}');

      if (_value != mainController.value) {
        setState(() {
          _value = mainController.value ?? false;
        });
        widget.onChanged(_value);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    mainController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _value,
      // activeColor: Colors.red,
      onChanged: (bool value) {
        print('Switch value $value');
        mainController.value = value;
      },
    );
  }

  @override
  MySwitchController? get widgetController => widget.controller;
}
