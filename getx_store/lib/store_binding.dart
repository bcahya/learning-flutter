import 'package:get/get.dart';
import 'package:getx_store/controllers/store_controller.dart';
import 'package:getx_store/services/provider.dart';
import 'package:getx_store/services/repository.dart';

class StoreBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoreController(
        repository: ReviewRepository(storeProvider: StoreProvider())));
  }
}
