// Basculement des states entre widget inspiré de cette page:
// https://medium.com/swlh/the-simplest-way-to-pass-and-fetch-data-between-stateful-and-stateless-widgets-pages-full-2021-c5dbce8db1db

import 'package:contactly/app/data/model/contact_model.dart';
import 'package:contactly/app/global_widgets/ContactsForm.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ContactListTile extends StatelessWidget {
  const ContactListTile({this.contact}) : super();

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 230,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage("https://picsum.photos/150"),
          ),
        ),
      ),
      title: Text('Un nom'),
      subtitle: Text('Un numéro de téléphone'),
      trailing: PopupMenuButton(
        icon: Icon(Icons.more_vert),
        onSelected: (result) {
          if ('edit-contact' == result) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ContactForm(
                  contact: this.contact,
                ),
              ),
            );
            return;
          }

          if ('remove-contact' == result) {
            Get.snackbar(
              "Fonctionnalité indisponible",
              "La suppression de contact n'a pas été intégré",
            );
            return;
          }
        },
        itemBuilder: (context) => [
          const PopupMenuItem(
            value: 'edit-contact',
            child: Text('Modifier contact'),
          ),
          const PopupMenuItem(
            value: 'remove-contact',
            child: Text('Supprimer contact'),
          ),
        ],
      ),
    );
  }
}
