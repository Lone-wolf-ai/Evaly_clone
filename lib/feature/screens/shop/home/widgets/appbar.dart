import 'package:evaly/feature/screens/shop/home/widgets/searchbar.dart';
import 'package:flutter/material.dart';

AppBar homeAppBar() {
    return AppBar(
      surfaceTintColor: Colors.white,
      title: const RoundedSearchBar(),
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {},
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_outlined))
      ],
    );
  }