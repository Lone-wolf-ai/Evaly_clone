import 'package:evaly/common/button/customelevatedbutton.dart';
import 'package:evaly/common/card/shopcard.dart';
import 'package:evaly/common/card/widget/productprice.dart';
import 'package:evaly/common/card/widget/producttitle.dart';
import 'package:evaly/common/card/widget/producttitlewithverifiacation.dart';
import 'package:evaly/common/card/widget/ratingwithtotalrated.dart';
import 'package:evaly/constant/imageconstant.dart';
import 'package:evaly/feature/screens/shop/account/accountscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      // Customize theme (optional)
      home: TestPage(), // Replace with your main screen widget
    );
  }
}

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                 
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}












