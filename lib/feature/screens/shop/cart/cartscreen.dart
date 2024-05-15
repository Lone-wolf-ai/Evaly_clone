import 'package:evaly/common/text/titletext.dart';
import 'package:evaly/constant/imageconstant.dart';
import 'package:evaly/feature/screens/shop/cart/widget/bottomtitle.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

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