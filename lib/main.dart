import 'package:flutter/material.dart';
import 'package:portfolio/pages/gis.dart';
import 'package:portfolio/pages/home.dart';
import 'package:portfolio/pages/nfts.dart';
import 'package:portfolio/pages/programming.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Taylor Johnson's Portfolio",
      theme: ThemeData(
        textTheme: GoogleFonts.soraTextTheme(
          Theme.of(context).textTheme,
        ),
        scaffoldBackgroundColor: Colors.black,
        scrollbarTheme: ScrollbarThemeData().copyWith(
          thumbColor: MaterialStateProperty.all(Colors.grey[300]),
        ),
        canvasColor: Colors.grey[700],
      ),
      home: Home(),
    );
  }
}
