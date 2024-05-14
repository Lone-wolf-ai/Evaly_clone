import 'package:evaly/common/button/customelevatedbutton.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

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
