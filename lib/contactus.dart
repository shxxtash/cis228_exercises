import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'appDrawer.dart';

void main() => runApp(const ContactUs());

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 214, 199, 162),
      ),
      body: const MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Message',
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a message';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 214, 199, 162)),
            ),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Processing Data')),
                );
              }
            },
            child: const Text('Send Message'),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'CONTACT US\nIf you want to reach out (or just want to say hey), feel free to email us. For general enquiries, fill in the above form, and we will reply ASAP.',
              textAlign: TextAlign.center,
              style: GoogleFonts.cormorantGaramond(
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
