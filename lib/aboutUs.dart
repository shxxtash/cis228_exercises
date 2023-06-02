import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'appDrawer.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
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
        child: Text(
          'KOTODA',
          style: GoogleFonts.dmSerifDisplay(
            fontSize: 35,
            color: Color.fromARGB(255, 49, 105, 50),
          ),
        ),
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
            'Discover Kotada, your ultimate destination for preloved clothing that combines convenience and style. We believe fashion should be accessible and sustainable. Our carefully curated collection offers affordable, high-quality garments that have been thoroughly washed and ironed, ready for you to wear with ease. By choosing preloved, you contribute to reducing waste and embracing a more conscious approach to fashion. Shop from the comfort of your home and enjoy a seamless experience with our thoughtfully selected pieces. Join us in the fashion revolution, where individuality meets environmental responsibility, at Kotada. Elevate your style while making a positive impact.',
            style: GoogleFonts.cormorantGaramond(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
