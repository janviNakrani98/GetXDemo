import 'package:get/get.dart';

class LoginScreenController extends GetxController {

  var loading=false.obs;
  String? text;

  @override
  void onInit() {
    getData();
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

  void getData(){
    print("here is my get Data");
    loading.value=true;
    update();
    text="Loading";
    Future.delayed(const Duration(seconds: 5), () {
      loading.value=false;
      text="Hey i am back";
      update();
    });
  }

}
