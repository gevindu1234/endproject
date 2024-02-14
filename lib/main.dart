import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screen.dart'; // Import the screen.dart file

void main() {
  runApp(MyApp());
  //debugShowCheckedModeBanner: false,
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: AppBar(
            title: Text(
              's c r e e n  p a g e',
              style: GoogleFonts.comfortaa(
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff202020),
                ),
              ),
            ),
            backgroundColor: Color(0xffffffff),
            elevation: 0,
          ),
        ),
        body: Stack(
          children: [
            MyForm(),
          ],
        ),
      ),
    );
  }
}
