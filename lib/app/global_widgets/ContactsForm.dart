// Formulaire inspiré de cette page :
// https://fluttercentral.com/Articles/Post/19/Creating_a_Form_in_Flutter

import 'package:contactly/app/data/model/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({Contact contact}) : super(contact: contact);

  final Contact contact;

  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 19.0,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 19.0,
                    ),
                    child: Container(
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
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "First Name",
                      labelText: "First Name",
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Last Name",
                      labelText: "Last Name",
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Phone Number",
                      labelText: "Phone Number",
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      } else if (!isNumeric(value)) {
                        return 'Please enter a valid Phone number';
                      }
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 16.0),
                    child: TextButton(
                      onPressed: null,
                      child: Text('Ajouter'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

bool isNumeric(String s) {
  try {
    return double.parse(s) != null;
  } catch (e) {
    return false;
  }
}
