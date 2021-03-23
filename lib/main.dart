import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/screens/home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Furniture App",
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme:
              GoogleFonts.dmSansTextTheme().apply(displayColor: kTextColor),
          appBarTheme: AppBarTheme(
              color: Colors.transparent,
              brightness: Brightness.light,
              elevation: 0),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: HomeScreen(),
    );
  }
}
