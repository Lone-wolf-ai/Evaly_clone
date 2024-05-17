import 'package:evaly/feature/screens/shop/home/homescreen.dart';
import 'package:evaly/feature/screens/shop/productdetail/productdetailsscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


final GlobalKey<ScaffoldState> homeScaffoldKey = GlobalKey<ScaffoldState>();
final GlobalKey<ScaffoldState> accountScaffoldKey = GlobalKey<ScaffoldState>();
final GlobalKey<ScaffoldState> cartScaffoldKey = GlobalKey<ScaffoldState>();

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
      home: HomeScreen(),
    );
  }
}




