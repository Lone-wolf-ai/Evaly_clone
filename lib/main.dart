import 'package:evaly/common/button/showbutton.dart';
import 'package:evaly/common/card/homepagecard.dart';
import 'package:evaly/common/card/homepagecardlineargradiant.dart';
import 'package:evaly/common/card/productcard.dart';
import 'package:evaly/constant/colorconstant.dart';
import 'package:evaly/constant/imageconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
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
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const HomePageCardLinearGradiant(
              title: 'Deals of The Day',
              subtitle: 'Best of Prices,Top Products',
              lineracolor: [ColorConstant.sky,ColorConstant.parrot],
            ),
            10.heightBox,
            const HomePageCard(title: 'Deals of The Day',
              subtitle: 'Best of Prices,Top Products',color: Colors.red,)
          ],
        ),
      ),
    );
  }
}
