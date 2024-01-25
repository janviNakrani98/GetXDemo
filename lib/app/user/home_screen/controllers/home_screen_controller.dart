import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  //TODO: Implement HomeScreenController

  final count = 0.obs;
  String? name;

  @override
  void onInit() {
    if(Get.arguments!=null){
      name=Get.arguments['name'];
    }
    print("name ---$name");
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
