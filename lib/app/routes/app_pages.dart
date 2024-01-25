import 'package:get/get.dart';

import '../user/home_screen/bindings/home_screen_binding.dart';
import '../user/home_screen/views/home_screen_view.dart';
import '../user/login_screen/bindings/login_screen_binding.dart';
import '../user/login_screen/views/login_screen_view.dart';
import '../user/signup_screen/bindings/signup_screen_binding.dart';
import '../user/signup_screen/views/signup_screen_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME_SCREEN,
      page: () => const HomeScreenView(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SCREEN,
      page: () => const LoginScreenView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP_SCREEN,
      page: () => const SignupScreenView(),
      binding: SignupScreenBinding(),
    ),
  ];
}
