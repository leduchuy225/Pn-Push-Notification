import 'package:flutter/material.dart';

class BaseController<T> extends ChangeNotifier {
  T? _value;
  bool? _isEnable;

  set enable(bool? value) {
    _isEnable = value;
    notifyListeners();
  }

  bool? get enable {
    return _isEnable;
  }

  set value(T? value) {
    _value = value;
    notifyListeners();
  }

  T? get value {
    return _value;
  }
}

mixin Controller<T extends BaseController> {
  T? get widgetController;
  late final T localController;

  T get mainController => widgetController ?? localController;
}
