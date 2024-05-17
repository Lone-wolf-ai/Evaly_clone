import 'package:evaly/navigation.dart';
import 'package:flutter/material.dart';

class CampignScreen extends StatelessWidget {
  const CampignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(),
      appBar: AppBar(automaticallyImplyLeading: false,),
    );
  }
}