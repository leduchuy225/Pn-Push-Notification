import '../utils/utils.dart';
import 'http_service.dart';

void setupServiceLocator() {
  putPermanent(HttpService());
}
