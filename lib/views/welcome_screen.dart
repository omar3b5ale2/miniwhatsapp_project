import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miniwahtsappmentor/views/logins_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121A1D),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  const SizedBox(height: 100.0),
                  const Image(
                    image: AssetImage(
                      "assets/welcome.png",
                    ),
                  ),
                  const SizedBox(height: 100.0),
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
                  const SizedBox(height: 20.0),
                  Container(
                    height: 50,
                    width: 300,
                    color: const Color(0xff008566),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
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
        ),
      ),
    );
  }
}
