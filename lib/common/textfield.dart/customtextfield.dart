import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.title,
    required this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.suffixfun,
    this.prefixfun,
    this.controller,
  });
  final String title;
  final TextEditingController? controller;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? suffixfun;
  final bool obscureText;
  final VoidCallback? prefixfun;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: title,
          hintStyle: TextStyle(color: Vx.gray900.withOpacity(0.5)),
          suffixIcon: suffixIcon != null
              ? IconButton(onPressed: suffixfun, icon: Icon(suffixIcon))
              : null,
          prefixIcon: prefixfun == null
              ? Icon(prefixIcon)
              : IconButton(onPressed: prefixfun, icon: Icon(prefixIcon))),
    ).box.p4.color(Vx.gray500.withOpacity(0.1)).roundedSM.make();
  }
}
