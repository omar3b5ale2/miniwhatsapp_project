import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miniwahtsappmentor/views/welcome_screen.dart';

import 'otp_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121A1D),
      appBar: AppBar(
        backgroundColor: const Color(0xff121A1D),
        leading: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WelcomeScreen()),
              );
            },
            child: const Icon(
              Icons.arrow_back_ios,
              size: 18.0,
              color: Color(0xffffffff),
            )),
        title: Row(
          children: [
            const SizedBox(
              width: 10.0,
            ),
            Text(
              'Enter your phone number',
              style: GoogleFonts.lato(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(
                child: Text(
                  'WhatsApp will need to verify your phone number.',
                  style: GoogleFonts.lato(
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 90.0),
                child: Column(
                  children: [
                    const SizedBox(height: 30.0),
                    TextField(
                      style: GoogleFonts.lato(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                      cursorColor: Colors.teal,
                      decoration: const InputDecoration(
                        hintText: 'phone number',
                      ),
                      keyboardType: TextInputType.phone,
                      maxLength: 15,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                width: 100.0,
                height: 60.0,
                color: const Color(0xff008566),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OtpScreen()),
                    );
                  },
                  child: Text(
                    'NEXT',
                    style: GoogleFonts.lato(
                      fontSize: 16.0,
                      color: const Color(0xff121A1D),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
