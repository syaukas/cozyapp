import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cozy_application/Pages/home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            // logo
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 50,
                right: 295,
              ),
              child: Image.asset(
                'assets/images/logo.png',
                width: 50,
                height: 50,
              ),
            ),
            // 1st title
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 30,
                right: 120,
                bottom: 0,
              ),
              child: Text(
                'Find Cozy House\nto Stay and Happy',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            // 2nd title
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 10,
                right: 69,
                bottom: 40,
              ),
              child: Text(
                'Stop membuang banyak waktu\npada tempat yang tidak habitable',
                style: GoogleFonts.poppins(
                  height: 1.9,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            // explore button
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 0,
                right: 135,
                bottom: 100,
              ),
              child: SizedBox(
                width: 210,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF5843BE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                  child: Text(
                    'Explore Now',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            // rectangle behind the image
            Padding(
              padding: const EdgeInsets.only(
                left: 0,
                top: 0,
                right: 0,
                bottom: 0,
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Container(
                      color: const Color(0xFF5843BE),
                      width: 412,
                      height: 200,
                      // width: screenWidth,
                      // height: screenHeight,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}