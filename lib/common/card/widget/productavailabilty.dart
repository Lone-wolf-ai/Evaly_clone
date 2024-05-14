import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductAbleabilty extends StatelessWidget {
  const ProductAbleabilty({super.key, required this.amount});
  final String amount;

  @override
  Widget build(BuildContext context) {
    List<Color> linearcolors = [Colors.red[500]!, Colors.orange[400]!];
    return "Only $amount Pcs"
        .text
        .white
        .size(12)
        .make()
        .centered()
        .box.p0
        .rounded
        .width(double.infinity)
        .linearGradient(linearcolors)
        .make();
  }
}
