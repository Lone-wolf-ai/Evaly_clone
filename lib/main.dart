import 'package:evaly/common/button/customelevatedbutton.dart';
import 'package:evaly/common/card/widget/productprice.dart';
import 'package:evaly/common/card/widget/ratingwithtotalrated.dart';
import 'package:evaly/constant/imageconstant.dart';
import 'package:evaly/feature/screens/shop/account/accountscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      // Customize theme (optional)
      home: TestPage(), // Replace with your main screen widget
    );
  }
}

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ShopNameAddressPriceButtons()
            ],
          ),
        ),
      ),
    );
  }
}

class ShopNameAddressPriceButtons extends StatelessWidget {
  const ShopNameAddressPriceButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          10.heightBox,
          Row(
            children: [
              const Image(
                image: AssetImage(ImageCons.watch1),
                height: 50,
                width: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "Revive For COD".text.bold.make(),
                  "COD"
                      .text
                      .white
                      .semiBold
                      .sm
                      .make()
                      .box
                      .amber500
                      .rounded
                      .padding(const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 2))
                      .make(),
                  const RatingwithTotalrates(
                      rate: 4, totalrated: "200"),
                ],
              )
            ],
          ),
          20.heightBox,
          const ShopInfo(),
          const Divider(thickness: 0.5,),
          const ProducPriceHorizontl(price: '200',reduced: false,),
          10.heightBox,
          Row(
            children: [
              Flexible(
                child: CustomElevatedButton(
                  title: "Add to Cart",
                  textcolor: Vx.black,
                  onPressed: () {},
                  backgroundColor: Vx.gray200,
                ).box.height(40).make(),
              ),
              20.widthBox,
              Flexible(
                child: CustomElevatedButton(
                  title: "Buy Now",
                  onPressed: () {},
                  
                ).box.height(40).make(),
              ),
            ],
          ),
          10.heightBox
        ],
      ),
    ).box.border(width: 0.1).roundedSM.p4.make();
  }
}

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
