import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './app_drawer.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 214, 199, 162),
      ),
      body: Stack(
        children: <Widget>[
          Image.asset('assets/p.jpg'),
          Transform.translate(
            offset: const Offset(0, 100),
            child: Column(
              children: <Widget>[
                _buildProfileImage(context),
                _buildProfileDetails(context),

                //_buildActions(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileImage(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      color: Colors.transparent,
      padding: const EdgeInsets.all(35),
      margin: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 252, 249, 242),
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Text('KOTODA',
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 35,
              color: Color.fromARGB(255, 49, 105, 50),
            )),
      ),
    );
  }

  Widget _buildProfileDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(60.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'About Us',
            style: GoogleFonts.frankRuhlLibre(
              fontSize: 35,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            'At Kotoda, we keep you up-to-date with the latests fashion trend,  whether it is clothing, footware, accessories, etc. Kotoda lets you order fashion items of your choice in an easy, convenient, and quick way.',
            style: GoogleFonts.cormorantGaramond(
                fontSize: 15, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
