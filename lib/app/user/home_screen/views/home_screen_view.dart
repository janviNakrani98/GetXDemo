import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_screen_controller.dart';

class HomeScreenView extends GetView<HomeScreenController> {
  const HomeScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      init: HomeScreenController(),
      builder: (controller) {
      return Scaffold(
        body: InkWell(
          onTap: (){
            Get.back();
          },
          child:  Center(
            child: Text(
              controller.name!,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      );
    },);
  }
}
