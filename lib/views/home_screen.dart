import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: SizedBox(
              width: 250,
              height: 250,
              child: Text(
                'Welcome to the Home Screen',
                style: GoogleFonts.lato(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ));
  }
}
