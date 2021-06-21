import 'package:contactly/app/data/model/contact_model.dart';
import 'package:contactly/app/global_widgets/ContactList.dart';
import 'package:contactly/app/global_widgets/ContactsForm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:contactly/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    // controller.getUser();

    FloatingActionButton floatingActionButton = FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ContactForm(
              contact: Contact(),
            ),
          ),
        );
      },
      child: Icon(
        Icons.add,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 3,
    );

    AppBar appBar = AppBar(
      title: Text('Contact'),
      actions: [
        PopupMenuButton(
          padding: EdgeInsets.only(right: 4),
          icon: Icon(Icons.sort),
          itemBuilder: (context) => [
            const PopupMenuItem(
              value: 'sort-by-alphabet',
              child: Text('Tri par ordre alphabétique'),
            ),
          ],
        ),
      ],
    );

    return MaterialApp(
      title: 'Contact',
      home: Scaffold(
          appBar: appBar,
          // drawer: drawer,
          floatingActionButton: floatingActionButton,
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          body: ContactList(contacts: <Contact>{
            Contact(
              firstname: 'Jean',
              lastname: 'DUPONT',
              avatar: '',
              telephone: '17',
            )
          })),
    );
  }
}
