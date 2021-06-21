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
    List _contacts = null != this.contacts ? this.contacts : [];
    Iterable<ContactListTile> contacts = _contacts.map((contact) {
      return ContactListTile(contact: contact);
    });

    return ListView(
      children: null != contacts ? contacts.toList() : [],
    );
  }
}
