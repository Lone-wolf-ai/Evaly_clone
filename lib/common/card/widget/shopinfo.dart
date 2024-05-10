import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';

class ShopInfo extends StatelessWidget {
  const ShopInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(
              Icons.location_pin,
              size: 10,
            ),
            4.widthBox,
            "Pallabi,Dhaka".text.gray600.sm.make()
          ],
        ),
        Row(
          children: [
            const Icon(
              Iconsax.truck,
              size: 10,
            ),
            4.widthBox,
            Row(
              children: [
                "৳ 60".text.bold.gray700.sm.make(),
                " (৳ 120 Outside Area)".text.gray600.sm.make(),
              ],
            )
          ],
        ),
        Row(
          children: [
            const Icon(
              Iconsax.truck_time,
              size: 10,
            ),
            4.widthBox,
            Row(
              children: [
                "Delivery in".text.gray600.sm.make(),
                " 1 to 4 Days".text.bold.gray700.sm.make(),
              ],
            ),
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.shopping_bag_outlined,
              size: 10,
            ),
            4.widthBox,
            Row(
              children: [
                "Stock: ".text.gray600.sm.make(),
                "500".text.bold.gray700.sm.make(),
              ],
            )
          ],
        )
      ],
    );
  }
}