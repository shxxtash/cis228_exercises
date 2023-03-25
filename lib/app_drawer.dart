import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 6,
      child: ListView(children: <Widget>[
        DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 252, 249, 242),
            ),
            child: Container(
              child: Column(
                children: <Widget>[
                  Material(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    elevation: 10,
                    child: Padding(
                      padding: EdgeInsets.all(40),
                    ),
                  ),
                  Text('Kotoda',
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 25,
                        color: Color.fromARGB(255, 49, 105, 50),
                      ))
                ],
              ),
            )),
        ListTile(
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
          leading: const Icon(Icons.home),
          title: const Text(
            'Home',
            style: TextStyle(fontSize: 20),
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/settings-screen');
          },
          leading: const Icon(Icons.settings),
          title: const Text(
            'Products',
            style: TextStyle(fontSize: 20),
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/about-screen');
          },
          leading: const Icon(Icons.group),
          title: const Text(
            'About',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ]),
    );
  }
}
