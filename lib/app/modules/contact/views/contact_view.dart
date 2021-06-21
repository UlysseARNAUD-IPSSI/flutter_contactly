import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:contactly/app/modules/contact/controllers/contact_controller.dart';

class ContactView extends GetView<ContactController> {
  final controller = Get.put(ContactController());
  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      title: Text('Contact'),
    );

    return MaterialApp(
      title: 'Contact',
      home: Scaffold(
        appBar: appBar,
        body: ListView(
          children: [],
        ),
      ),
    );
  }
}
