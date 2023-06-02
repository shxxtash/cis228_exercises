import 'package:flutter/material.dart';
import 'productScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'AboutUs.dart';
import 'package:flutter_application_202/contactus.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 6,
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'Kotoda',
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 35,
                color: Color.fromARGB(255, 49, 105, 50),
              ),
            ),
            accountEmail: null,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 252, 249, 242),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/logo.png'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'Home',
              style: GoogleFonts.frankRuhlLibre(
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.popUntil(context, ModalRoute.withName('/'));
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text(
              'Products',
              style: GoogleFonts.frankRuhlLibre(
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text(
              'Contact Us',
              style: GoogleFonts.frankRuhlLibre(
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactUs()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text(
              'About Us',
              style: GoogleFonts.frankRuhlLibre(
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
