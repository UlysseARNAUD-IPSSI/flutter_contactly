import 'package:contactly/app/data/model/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContactList extends StatefulWidget {
  const ContactList({Set<Contact> contacts}) : super(contacts: contacts);

  final Set<Contact> contacts;

  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                fit: BoxFit.contain,
                image: NetworkImage("https://picsum.photos/100"),
              ),
            ),
          ),
          title: Text('Two-line ListTile'),
          subtitle: Text('Here is a second line'),
          trailing: PopupMenuButton(
            icon: Icon(Icons.more_vert),
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
        ),
      ],
    );
  }
}
