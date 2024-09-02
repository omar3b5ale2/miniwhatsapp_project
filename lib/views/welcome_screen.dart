import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121A1D),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              Text(
                "Welcome to WhatsApp",
                style: GoogleFonts.lato(
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 15.0),
              const Image(
                image: AssetImage(
                  "assets/images/welcome.png",
                ),
              ),
              const SizedBox(height: 15.0),
              Column(
                children: [
                  Text("Read our Privacy and Policy. Tap Agree and continue to",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        fontSize: 12.0,
                        color: Colors.white,
                      )),
                  Text("accept the Terms of Service",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        fontSize: 12.0,
                        color: Colors.white,
                      )),
                ],
              ),
              const SizedBox(height: 15.0),
              Container(
                height: 50,
                width: 300,
                color: const Color(0xff008566),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                  child: Text("AGREE AND CONTINUE",
                      style: GoogleFonts.lato(
                        fontSize: 13.0,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
