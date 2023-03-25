// main.dart
import 'package:flutter/material.dart';

import './about_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KOTODA',
      home: const AboutScreen(),
      routes: {
        '/about-screen': (BuildContext ctx) => const AboutScreen(),
      },
    );
  }
}
