import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miniwahtsappmentor/views/logins_screen.dart';
import 'package:miniwahtsappmentor/views/profile_screen.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
                MaterialPageRoute(builder: (context) => const LoginScreen()),
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
              'Verifying your number',
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
          child: Expanded(
            child: Column(
              children: [
                Text(
                  'Enter your 6-digit OTP',
                  style: GoogleFonts.lato(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100.0, right: 100.0),
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                    keyboardType: TextInputType.number,
                    maxLength: 6,
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                      hintText: ' - - - - - -',
                      alignLabelWithHint: true,
                    ),
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
                            builder: (context) => const ProfileScreen()),
                      );
                    },
                    child: Text(
                      'VERIFY',
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
      ),
    );
  }
}
