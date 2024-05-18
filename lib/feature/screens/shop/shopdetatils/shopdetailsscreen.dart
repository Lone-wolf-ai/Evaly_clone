import 'package:evaly/common/button/circulariconbutton.dart';
import 'package:evaly/common/card/cardlogobanner.dart';
import 'package:evaly/common/card/productcardwithtag.dart';
import 'package:evaly/feature/screens/shop/home/widgets/appbar/widget/searchbar.dart';
import 'package:evaly/navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';
import 'package:velocity_x/velocity_x.dart';

class ShopDetails extends StatelessWidget {
  const ShopDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final w=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Vx.gray100,
      bottomNavigationBar: const BottomNav(),
      appBar: AppBar(
        surfaceTintColor: Vx.white,
        title: const RoundedSearchBar(),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.share))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CardLogoBaner(title: "hello").paddingSymmetric(horizontal: 10),
            Row(
              children: [
                SizedBox(
                  width: w,
                  child: StickyHeader(
                      header: Row(
                        mainAxisSize: MainAxisSize.min,
                        
                        children: [
                          "Products".text.bold.size(18).make().paddingSymmetric(horizontal: 10),
                          const Spacer(),
                          CustomIconButton(
                            
                            icon: Icons.filter_alt,
                            onPressed: () {},
                            iconcolor: Vx.black,
                            backgroundColor: Vx.white,
                          ).paddingSymmetric(horizontal: 10)
                        ],
                      ).box.gray100.make(),
                      content: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                mainAxisExtent: 320),
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return const ProductCardWithTag();
                        },
                      ).box.gray100.make()),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
