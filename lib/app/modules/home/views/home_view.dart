import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:contactly/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    // controller.getUser();

    AlertDialog alert = AlertDialog(
      title: Text("My title"),
      content: Text("This is my message."),
      actions: [
        TextButton(
          child: Text("OK"),
          onPressed: () {
            Navigator.of(context).pop('dialog');
          },
        ),
      ],
    );

    FloatingActionButton floatingActionButton = FloatingActionButton(
      onPressed: () {
        // TODO : Ajout contact
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

    Container drawer = Container(
      width: 200,
      child: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );

    Scaffold oldBody = Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListView(
            children: [
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Neil Armstrong'),
                onTap: () {
                  Navigator.of(context).pushNamed("your_route_name");
                },
              ),
            ],
          )
        ],
      ),
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      appBar: appBar,
      drawer: drawer,
    );

    return MaterialApp(
      title: 'Contact',
      home: Scaffold(
        appBar: appBar,
        // drawer: drawer,
        body: ListView(
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
        ),
      ),
    );
  }
}
