import 'package:demo_getx/app/user/home_screen/views/home_screen_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  const LoginScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginScreenController>(
        init: LoginScreenController(),
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('LoginScreenView'),
              centerTitle: true,
            ),
            body: Obx(() {
              return controller.loading.value
                  ? Center(
                      child: Column(
                        children: [
                          Text(
                            controller.text!,
                            style: const TextStyle(fontSize: 20),
                          ),
                          const Center(
                            child:
                                CircularProgressIndicator(color: Colors.pink),
                          ),
                        ],
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        Get.to(()=>const HomeScreenView(),arguments: {"name":"test name"});
                      },
                      child: Center(
                        child: Text(
                          controller.text!,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                    );
            }),
          );
        });
  }
}
