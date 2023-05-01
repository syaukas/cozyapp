import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cozy_application/Pages/details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            // 1st Header
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                top: 24,
                right: 205,
                bottom: 2,
              ),
              child: Text(
                'Explore Now',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  height: 1.9,
                ),
              ),
            ),
            // 2nd Header
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                top: 0,
                right: 150,
                bottom: 0,
              ),
              child: Text(
                'Mencari kosan yang cozy',
                style: GoogleFonts.poppins(
                  color: const Color(0xFF82868E),
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            // PopularCities(),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                top: 30,
                right: 172,
                bottom: 10,
              ),
              child: Text(
                'Popular Cities',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 1.9,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 2),
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  // 1st is the Jakarta image with Card Shape
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: SizedBox(
                      width: 160,
                      height: 150,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: const Color(0xFFF6F7F8),
                        child: Wrap(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              child:
                                  Image.asset("assets/images/jakarta.png"),
                            ),
                            // const ListTile(
                            //   title: Text("Heading"),
                            //   subtitle: Text("Sub Heading"),
                            // ),
                            const Padding(
                              padding: EdgeInsets.only(left: 16, top: 18),
                              child: SizedBox(
                                width: 120,
                                height: 24,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Jakarta',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Bandung
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SizedBox(
                      width: 160,
                      height: 150,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: const Color(0xFFF6F7F8),
                        child: Wrap(
                          children: <Widget>[
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  child: Image.asset(
                                      "assets/images/bandung.png"),
                                ),
                                Container(
                                  width: 50,
                                  height: 30,
                                  margin: const EdgeInsets.only(
                                    left: 102,
                                    top: 0,
                                  ),
                                  padding: const EdgeInsets.only(
                                    left: 4,
                                    top: 4,
                                    right: 4,
                                    bottom: 4,
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Color(0xff5843BE),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(18),
                                      bottomRight: Radius.circular(0),
                                      bottomLeft: Radius.circular(26),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.star,
                                    color: Color(0xFFFF9376),
                                  ),
                                ),
                              ],
                            ),
                            // const ListTile(
                            //   title: Text("Heading"),
                            //   subtitle: Text("Sub Heading"),
                            // ),
                            const Padding(
                              padding: EdgeInsets.only(left: 16, top: 18),
                              child: SizedBox(
                                width: 120,
                                height: 24,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Bandung',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailsPage(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: SizedBox(
                        width: 160,
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: const Color(0xFFF6F7F8),
                          child: Wrap(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                child: Image.asset(
                                  "assets/images/surabaya.png",
                                  width: 160,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              // const ListTile(
                              //   title: Text("Heading"),
                              //   subtitle: Text("Sub Heading"),
                              // ),
                              const Padding(
                                padding: EdgeInsets.only(left: 16, top: 18),
                                child: SizedBox(
                                  width: 120,
                                  height: 24,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Surabaya',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Palembang
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SizedBox(
                      width: 160,
                      height: 150,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: const Color(0xFFF6F7F8),
                        child: Wrap(
                          children: <Widget>[
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  child: Image.asset(
                                    "assets/images/palembang.png",
                                    width: 160,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            // const ListTile(
                            //   title: Text("Heading"),
                            //   subtitle: Text("Sub Heading"),
                            // ),
                            const Padding(
                              padding: EdgeInsets.only(left: 16, top: 18),
                              child: SizedBox(
                                width: 120,
                                height: 24,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Palembang',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Aceh
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SizedBox(
                      width: 160,
                      height: 150,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: const Color(0xFFF6F7F8),
                        child: Wrap(
                          children: <Widget>[
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  child: Image.asset(
                                    "assets/images/aceh.png",
                                    width: 160,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  height: 30,
                                  margin: const EdgeInsets.only(
                                    left: 102,
                                    top: 0,
                                  ),
                                  padding: const EdgeInsets.only(
                                    left: 4,
                                    top: 4,
                                    right: 4,
                                    bottom: 4,
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Color(0xff5843BE),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(18),
                                      bottomRight: Radius.circular(0),
                                      bottomLeft: Radius.circular(26),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.star,
                                    color: Color(0xFFFF9376),
                                  ),
                                ),
                              ],
                            ),
                            // const ListTile(
                            //   title: Text("Heading"),
                            //   subtitle: Text("Sub Heading"),
                            // ),
                            const Padding(
                              padding: EdgeInsets.only(left: 16, top: 18),
                              child: SizedBox(
                                width: 120,
                                height: 24,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Aceh',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Bogor
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SizedBox(
                      width: 160,
                      height: 150,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: const Color(0xFFF6F7F8),
                        child: Wrap(
                          children: <Widget>[
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  child: Image.asset(
                                    "assets/images/bogor.png",
                                    width: 160,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            // const ListTile(
                            //   title: Text("Heading"),
                            //   subtitle: Text("Sub Heading"),
                            // ),
                            const Padding(
                              padding: EdgeInsets.only(left: 16, top: 18),
                              child: SizedBox(
                                width: 120,
                                height: 24,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Bogor',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Recommended Spaces
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                top: 30,
                right: 172,
                bottom: 16,
              ),
              child: Text(
                'Recommended Space',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 1.9,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset(
                          "assets/images/image_1.png",
                          width: 130,
                          height: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: 70,
                        height: 30,
                        margin: const EdgeInsets.only(
                          left: 60,
                          top: 0,
                        ),
                        padding: const EdgeInsets.only(
                          left: 4,
                          top: 4,
                          right: 4,
                          bottom: 4,
                        ),
                        decoration: const BoxDecoration(
                          color: Color(0xff5843BE),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(18),
                            bottomRight: Radius.circular(0),
                            bottomLeft: Radius.circular(26),
                          ),
                        ),
                        child: Text(
                          "⭐ 4/5",
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      // text for image 1
                      Padding(
                        padding: const EdgeInsets.only(left: 154),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 2),
                              child: Text(
                                'Kuretakeso Hott',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: Row(
                                children: [
                                  Text(
                                    '\$52',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: const Color(0xFF5843BE),
                                    ),
                                  ),
                                  Text(
                                    ' / month',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: const Color(0xFF7A7E86),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Text(
                                'Bandung, Germany',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: const Color(0xFF7A7E86),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // column for 2nd image (Roemah Nenek)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24, top: 30),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset(
                          "assets/images/image_2.png",
                          width: 130,
                          height: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: 70,
                        height: 30,
                        margin: const EdgeInsets.only(
                          left: 60,
                          top: 0,
                        ),
                        padding: const EdgeInsets.only(
                          left: 4,
                          top: 4,
                          right: 4,
                          bottom: 4,
                        ),
                        decoration: const BoxDecoration(
                          color: Color(0xff5843BE),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(18),
                            bottomRight: Radius.circular(0),
                            bottomLeft: Radius.circular(26),
                          ),
                        ),
                        child: Text(
                          "⭐ 5/5",
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      // text for image 2
                      Padding(
                        padding: const EdgeInsets.only(left: 154),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 2),
                              child: Text(
                                'Roemah Nenek',
                                style: GoogleFonts.poppins(
                                  color: const Color(0xFF000000),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: Row(
                                children: [
                                  Text(
                                    '\$11',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: const Color(0xFF5843BE),
                                    ),
                                  ),
                                  Text(
                                    ' / month',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: const Color(0xFF7A7E86),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Text(
                                'Seattle, Bogor',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: const Color(0xFF7A7E86),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // column for 3rd Image (Darrling How)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                    top: 30,
                    right: 0,
                    bottom: 0,
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset(
                          "assets/images/image_3.png",
                          width: 130,
                          height: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: 70,
                        height: 30,
                        margin: const EdgeInsets.only(
                          left: 60,
                          top: 0,
                        ),
                        padding: const EdgeInsets.only(
                          left: 4,
                          top: 4,
                          right: 4,
                          bottom: 4,
                        ),
                        decoration: const BoxDecoration(
                          color: Color(0xff5843BE),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(18),
                            bottomRight: Radius.circular(0),
                            bottomLeft: Radius.circular(26),
                          ),
                        ),
                        child: Text(
                          "⭐ 3/5",
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      // text for
                      Padding(
                        padding: const EdgeInsets.only(left: 154),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 2),
                              child: Text(
                                'Darrling How',
                                style: GoogleFonts.poppins(
                                  color: const Color(0xFF000000),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: Row(
                                children: [
                                  Text(
                                    '\$20',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: const Color(0xFF5843BE),
                                    ),
                                  ),
                                  Text(
                                    ' / month',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: const Color(0xFF7A7E86),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Text(
                                'Jakarta, Indonesia',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: const Color(0xFF7A7E86),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // column for 4th Image
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                    top: 30,
                    right: 0,
                    bottom: 0,
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset(
                          "assets/images/image_4.png",
                          width: 130,
                          height: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: 70,
                        height: 30,
                        margin: const EdgeInsets.only(
                          left: 60,
                          top: 0,
                        ),
                        padding: const EdgeInsets.only(
                          left: 4,
                          top: 4,
                          right: 4,
                          bottom: 4,
                        ),
                        decoration: const BoxDecoration(
                          color: Color(0xff5843BE),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(18),
                            bottomRight: Radius.circular(0),
                            bottomLeft: Radius.circular(26),
                          ),
                        ),
                        child: Text(
                          "⭐ 5/5",
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      // text for image 2
                      Padding(
                        padding: const EdgeInsets.only(left: 154),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 2),
                              child: Text(
                                'Orang Crown',
                                style: GoogleFonts.poppins(
                                  color: const Color(0xFF000000),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: Row(
                                children: [
                                  Text(
                                    '\$552',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: const Color(0xFF5843BE),
                                    ),
                                  ),
                                  Text(
                                    ' / month',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: const Color(0xFF7A7E86),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Text(
                                'Halla, Sumatra',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: const Color(0xFF7A7E86),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // column for 5th Image
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                    top: 30,
                    right: 0,
                    bottom: 0,
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset(
                          "assets/images/image_5.png",
                          width: 130,
                          height: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: 70,
                        height: 30,
                        margin: const EdgeInsets.only(
                          left: 60,
                          top: 0,
                        ),
                        padding: const EdgeInsets.only(
                          left: 4,
                          top: 4,
                          right: 4,
                          bottom: 4,
                        ),
                        decoration: const BoxDecoration(
                          color: Color(0xff5843BE),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(18),
                            bottomRight: Radius.circular(0),
                            bottomLeft: Radius.circular(26),
                          ),
                        ),
                        child: Text(
                          "⭐ 3/5",
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      // text for image 2
                      Padding(
                        padding: const EdgeInsets.only(left: 154),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 2),
                              child: Text(
                                'City of Cactus',
                                style: GoogleFonts.poppins(
                                  color: const Color(0xFF000000),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: Row(
                                children: [
                                  Text(
                                    '\$20',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: const Color(0xFF5843BE),
                                    ),
                                  ),
                                  Text(
                                    ' / month',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: const Color(0xFF7A7E86),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Text(
                                'Jakarta, Indonesia',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: const Color(0xFF7A7E86),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
