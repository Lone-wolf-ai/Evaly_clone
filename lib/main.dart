import 'package:evaly/feature/screens/shop/home/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';


final GlobalKey<ScaffoldState> homeScaffoldKey = GlobalKey<ScaffoldState>();
final GlobalKey<ScaffoldState> accountScaffoldKey = GlobalKey<ScaffoldState>();
final GlobalKey<ScaffoldState> cartScaffoldKey = GlobalKey<ScaffoldState>();

void main() {
  
  WidgetsFlutterBinding.ensureInitialized();
  debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      
        debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}


