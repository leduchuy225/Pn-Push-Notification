import '../../data/models/widget_interface.dart';

class MyCheckboxController extends BaseController<bool?> {
  String? _title;

  set title(String? value) {
    _title = value;
    notifyListeners();
  }

  String? get title {
    return _title;
  }
}
