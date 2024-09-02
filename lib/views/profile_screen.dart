import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff121A1D),
        appBar: AppBar(
          backgroundColor: const Color(0xff121A1D),
          title: const Text('Profile'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(children: [
                const CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.teal,
                  child: Icon(
                    Icons.account_circle,
                    size: 45.0,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text('John Doe'),
                const SizedBox(height: 10.0),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae lacus ac velit dignissim semper. Sed pharetra, arcu ac consectetur pulvinar, dui neque lobortis nunc, vitae facilisis turpis velit at velit. Duis vitae congue nisi. Nam vel turpis euismod, ullamcorper neque ac, tristique lectus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec malesuada, nisi a sollicitudin consectetur',
                  style: GoogleFonts.lato(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ]),
            ),
          ),
        ));
  }
}
