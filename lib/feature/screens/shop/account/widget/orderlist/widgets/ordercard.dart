import 'package:evaly/feature/screens/shop/account/widget/orderlist/widgets/orderstatus.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
    this.title = "EV40DG445OD",
    this.price = "Price",
    this.date = "Date",
  });
  final String title;
  final String price;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            title.text.bold.gray800.make(),
            const Orderstatus(),
          ],
        ),
        10.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            price.text.bold.orange500.make(),
            date.text.gray600.make()
          ],
        )
      ],
    )
        .box
        .padding(const EdgeInsets.symmetric(horizontal: 10, vertical: 10))
        .margin(const EdgeInsets.symmetric(horizontal: 10, vertical: 10))
        .white
        .roundedSM
        .make();
  }
}