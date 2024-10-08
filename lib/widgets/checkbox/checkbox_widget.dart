import 'package:flutter/material.dart';

import '../../data/models/widget_interface.dart';
import 'checkbox_controller.dart';

class MyCheckbox extends StatefulWidget {
  final bool value;
  final String? title;
  final void Function(bool?) onChanged;
  final MyCheckboxController? controller;

  const MyCheckbox({
    Key? key,
    this.title,
    this.controller,
    this.value = false,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<MyCheckbox> createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox>
    with Controller<MyCheckboxController> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    if (widgetController == null) {
      localController = MyCheckboxController();
    }

    mainController.title ??= widget.title;
    mainController.value ??= widget.value;

    _value = mainController.value ?? false;

    mainController.addListener(() {
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
    return CheckboxListTile(
      value: _value,
      enabled: mainController.enable,
      title: Text(mainController.title ?? ''),
      onChanged: (value) {
        mainController.value = value;
      },
    );
  }

  @override
  MyCheckboxController? get widgetController => widget.controller;
}
