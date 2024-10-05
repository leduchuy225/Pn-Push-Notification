import 'package:collection/collection.dart';

import '../../data/models/base_selector.dart';
import '../text_field/text_field_controller.dart';

class MySelectorController extends MyTextFieldController {
  List<MySelectorModel> _selectorData = [];

  set selectors(List<MySelectorModel> selectors) {
    _selectorData = selectors;
    notifyListeners();
  }

  List<MySelectorModel> get selectors {
    return _selectorData;
  }

  MySelectorModel? get first {
    return _selectorData.firstOrNull;
  }
}
