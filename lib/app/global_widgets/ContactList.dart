import 'package:contactly/app/data/model/contact_model.dart';
import 'package:contactly/app/global_widgets/ContactListTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContactList extends StatefulWidget {
  const ContactList({contacts}) : super();

  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  Set<Contact> contacts;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this.contacts.map((contact) {
        return ContactListTile(contact: contact);
      }).toList(),
    );
  }
}
