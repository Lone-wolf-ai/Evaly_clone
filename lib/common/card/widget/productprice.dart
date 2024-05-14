import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ProducPrice extends StatelessWidget {
  const ProducPrice(
      {super.key, this.reduced = true, required this.price, this.newprice});
  final bool reduced;
  final String price;
  final String? newprice;
  @override
  Widget build(BuildContext context) {
    return (!reduced)
        ? "৳ $price".text.bold.orange600.make()
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "৳ $price"
                  .text
                  .lineThrough
                  .sm
                  .size(8).semiBold
                  .gray500
                  .make(),
              "৳ $newprice".text.semiBold.medium.orange600.make()
            ],
          );
  }
}
class ProducPriceHorizontl extends StatelessWidget {
  const ProducPriceHorizontl(
      {super.key, this.reduced = true, required this.price, this.newprice});
  final bool reduced;
  final String price;
  final String? newprice;
  @override
  Widget build(BuildContext context) {
    return (!reduced)
        ? "৳ $price".text.bold.orange600.make()
        : Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              "৳ $price"
                  .text
                  .lineThrough
                  .fontWeight(FontWeight.w500)
                  .size(12)
                  .gray500
                  .make(),
              "৳ $newprice".text.bold.orange600.make()
            ],
          );
  }
}