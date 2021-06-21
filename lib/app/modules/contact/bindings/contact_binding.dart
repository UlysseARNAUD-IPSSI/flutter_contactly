import 'package:get/get.dart';

import 'package:contactly/app/modules/contact/controllers/contact_controller.dart';

class ContactBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContactController>(
      () => ContactController(),
    );
  }
}
