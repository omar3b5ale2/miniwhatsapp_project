import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: double.infinity,
              height: 250,
              child: Text(
                'Welcome to the Home Screen',
                textAlign:    TextAlign.center,
                style: GoogleFonts.lato(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ));
  }
}
