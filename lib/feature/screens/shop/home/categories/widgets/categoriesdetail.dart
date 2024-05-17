import 'package:evaly/feature/screens/shop/home/categories/widgets/imgwithtitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class CategoriesDetails extends StatelessWidget {
  const CategoriesDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (BuildContext context, int index) {
        return 10.heightBox;
      },
      itemBuilder: (BuildContext context, int index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            "Tile"
                .text
                .size(18)
                .bold
                .make()
                .paddingOnly(left: 20, bottom: 10),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return const ImgWithTitle();
              },
            ),
          ],
        );
      },
    );
  }
}