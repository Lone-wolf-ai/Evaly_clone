import 'package:evaly/common/button/customelevatedbutton.dart';
import 'package:evaly/common/card/productcardwithtag.dart';
import 'package:evaly/common/text/titletext.dart';
import 'package:evaly/constant/imageconstant.dart';
import 'package:evaly/navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
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
      home: NavigationBarMenue(), // Replace with your main screen widget
    );
  }
}

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    const int items = 0;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Vx.white,
        appBar: AppBar(
          backgroundColor: Vx.white,
          title: const TitleText(
            title: 'Shopping Cart',
            size: 22,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete_outline,
                  size: 30,
                ))
          ],
        ),
        body: Stack(
          children: [
            (items != 0)
                ? ListView.separated(
                    itemCount: 1,
                    separatorBuilder: (BuildContext context, int index) {
                      return 10.heightBox;
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return "hello".text.make().box.red100.make();
                    },
                  )
                    .box
                    .padding(const EdgeInsets.symmetric(horizontal: 20))
                    .make()
                : Column(
                    children: [
                      const Image(
                        image: AssetImage(
                          ImageCons.cart,
                        ),
                        width: 400,
                      ).centered(),
                      'Nothing to add to Cart'
                          .text
                          .semiBold
                          .gray500
                          .size(16)
                          .make()
                    ],
                  ),
            Positioned(
                bottom: BorderSide.strokeAlignInside,
                child: const BottomTitle().box.width(w).make())
          ],
        ).box.width(w).make());
  }
}

class BottomTitle extends StatelessWidget {
  const BottomTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20.0, // Adjust elevation as needed
      shadowColor: Vx.black, // Adjust shadow color (optional)
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0), // Adjust border radius
      ),
      child: Title(
        color: Vx.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.circle_outlined,
                  size: 20,
                ).onTap(() {}),
                4.widthBox,
                "All".text.size(16).make()
              ],
            ),
            const Spacer(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                "Total: ".text.size(16).semiBold.make(),
                "\$0".text.semiBold.orange500.size(16).make(),
                10.widthBox,
                CustomElevatedButton(
                  title: "Check out",
                  onPressed: () {},
                ).box.width(120).height(40).make(),
              ],
            )
          ],
        ),
      ).box.p16.color(Vx.white).topRounded().make(),
    );
  }
}
