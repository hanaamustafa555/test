import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Colors
  static Color yellowColor = const Color(0xffF9AD1A);
  static Color whiteColor = const Color(0xffFFFFFF);
  static Color pinkColor = const Color(0xffF35959);
  static Color purple1Color = Color.fromARGB(239, 28, 8, 181);
  static Color purple2Color = Color.fromARGB(255, 177, 45, 233);
  static Color purple3Color = Color.fromARGB(172, 31, 3, 125);
  static Color blackColor = const Color(0xff141414);

  // Fonts
  // nunito
  static TextStyle nunitoFont40 = GoogleFonts.nunito(
    fontSize: 40,
    fontWeight: FontWeight.w900,
  );
  static TextStyle nunitoFont20 =
      GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.w900);
  static TextStyle nunitoFont24 =
      GoogleFonts.nunito(fontSize: 24, fontWeight: FontWeight.w900);
  static TextStyle nunitoFont15 =
      GoogleFonts.nunito(fontSize: 15, fontWeight: FontWeight.bold);
  static TextStyle nunitoFont18 =
      GoogleFonts.nunito(fontSize: 18, fontWeight: FontWeight.w900);
  static TextStyle nunitoFont18Regular =
      GoogleFonts.nunito(fontSize: 18, fontWeight: FontWeight.normal);

  //openSansFont
  static TextStyle openSansFont22 = GoogleFonts.openSans(
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );
  static TextStyle openSansFont40 = GoogleFonts.openSans(
    fontSize: 40,
    fontWeight: FontWeight.bold,
  );
}
