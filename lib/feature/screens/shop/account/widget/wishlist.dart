import 'package:evaly/common/card/widget/productprice.dart';
import 'package:evaly/common/card/widget/producttitle.dart';
import 'package:evaly/constant/imageconstant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Wishlist".text.make(),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: ListView.builder(
            itemCount: 1,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  const Image(
                    image: AssetImage(ImageCons.watch1),
                    width: 100,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: "Title".text.size(16).make()),
                        Expanded(
                            child: "Price"
                                .text
                                .fontWeight(FontWeight.w500)
                                .make()),
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.timer_sharp,
                                    size: 12,
                                    color: Vx.gray500,
                                  ),
                                  4.widthBox,
                                  "Just now".text.gray500.size(8).make()
                                ],
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.delete,
                                    size: 20,
                                    color: Vx.gray600,
                                  ))
                            ],
                          ),
                        )
                      ],
                    ).box.width(double.infinity).height(80).make(),
                  ),
                ],
              )
                  .box
                  .white
                  .rounded
                  .border(width: 0.1)
                  
                  .make();
            },
          ),
        ),
      ),
    );
  }
}
