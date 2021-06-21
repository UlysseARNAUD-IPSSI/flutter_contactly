import 'package:contactly/app/modules/contact/bindings/contact_binding.dart';
import 'package:contactly/app/modules/contact/views/contact_view.dart';
import 'package:get/get.dart';
import 'package:contactly/app/modules/home/bindings/home_binding.dart';
import 'package:contactly/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  // static const INITIAL = Routes.SPLASH_SCREEN;
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CONTACT_PAGE,
      page: () => ContactView(),
      binding: ContactBinding(),
    ),
  ];
}
