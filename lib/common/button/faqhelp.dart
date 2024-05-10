import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class FaqHelp extends StatelessWidget {
  const FaqHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return "FAQ/HELP ?"
        .text
        .size(16)
        .bold
        .textStyle(GoogleFonts.roboto())
        .tight
        .make()
        .p(16)
        .onTap(() {});
  }
}

