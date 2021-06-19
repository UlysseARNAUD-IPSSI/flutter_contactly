import 'package:contactly/app/data/model/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContactListTile extends StatelessWidget {
  const ContactListTile({Contact contact}) : super(contact: contact);

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
