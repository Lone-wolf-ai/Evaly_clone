import 'package:evaly/common/card/homepagecard.dart';
import 'package:evaly/common/card/homepagecardlineargradiant.dart';
import 'package:evaly/common/card/shopcard.dart';
import 'package:evaly/constant/colorconstant.dart';
import 'package:evaly/constant/imageconstant.dart';
import 'package:evaly/feature/screens/auth/loginscreen/loginscreen.dart';
import 'package:evaly/navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Provide TickerProvider before building the app

    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}



