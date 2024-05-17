import 'package:evaly/common/card/cardlogobanner.dart';
import 'package:evaly/common/card/widget/productprice.dart';
import 'package:evaly/common/card/widget/ratingwithtotalrated.dart';
import 'package:evaly/common/image/productimgwithtag.dart';
import 'package:evaly/feature/screens/shop/productdetail/productdetailsscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductCardWithTag extends StatelessWidget {
  const ProductCardWithTag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0, // Adjust width as needed
      height: 400.0, // Adjust height as needed
      decoration: BoxDecoration(
        color: Vx.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProductimgWithTag(),
          const SizedBox(height: 5.0), // Adjust spacing as needed
          const MultilineTitlewithverification(
            title: 'hello its me',
            size: 14.0,
            isboled: false,
          ),
          const SizedBox(height: 10.0), // Adjust spacing as needed
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: ProducPrice(
              price: '5000',
              reduced: true,
              newprice: '1000',
            ),
          ),
          // Adjust spacing as needed
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "In Stock",
                  style: TextStyle(color: Colors.grey[500], fontSize: 12.0),
                ),
                const SizedBox(width: 5.0), // Adjust spacing as needed
                const RatingwithTotalrates(rate: 4, totalrated: '20'),
              ],
            ),
          ),
          const SizedBox(height: 5.0), // Adjust spacing as needed
        ],
      ),
    ).onTap(()=>Get.to(()=>const ProductDetails()));
  }
}
