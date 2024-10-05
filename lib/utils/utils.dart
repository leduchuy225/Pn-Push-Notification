import 'package:get/get.dart';

void putPermanent<S>(S service) {
  Get.put(service, permanent: true);
}

void putTemporary<S>(S service) {
  Get.lazyPut(() => service, fenix: true);
}
