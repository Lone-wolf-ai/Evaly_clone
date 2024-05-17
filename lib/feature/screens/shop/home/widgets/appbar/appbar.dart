import 'package:evaly/feature/screens/shop/home/widgets/appbar/widget/searchbar.dart';
import 'package:evaly/main.dart';
import 'package:flutter/material.dart';


AppBar homeAppBar() { // Pass the Scaffold key
  return AppBar(
    surfaceTintColor: Colors.white,
    title: const RoundedSearchBar(),
    leading: IconButton(
      icon: const Icon(Icons.menu),
      onPressed: () => homeScaffoldKey.currentState!.openDrawer(),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.notifications_none_outlined),
      ),
    ],
  );
}
