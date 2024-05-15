import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomListTitle extends StatelessWidget {
  const CustomListTitle({
    super.key,
    required this.title,
    required this.icon,
    required this.ontap,
  });

  final String title;
  final IconData icon;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // Add InkWell for tap effect
      splashColor: Theme.of(context).splashColor, // Adjust splash color
      onTap: ontap,
      child: Row(
        children: [
          Icon(icon, size: 20),
          16.widthBox,
          title.text.size(16).make(),
        ],
      ).paddingSymmetric(horizontal: 20, vertical: 14),
    );
  }
}
