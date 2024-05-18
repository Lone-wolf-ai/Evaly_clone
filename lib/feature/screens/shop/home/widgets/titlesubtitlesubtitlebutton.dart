import 'package:evaly/feature/screens/shop/home/widgets/roundedcolorbox.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TitleSubtitleandButton extends StatelessWidget {
  const TitleSubtitleandButton({
    super.key,
    required this.ontap,
    required this.title,
    required this.subtitle,
    required this.color,
  });
  final VoidCallback ontap;
  final String title;
  final String subtitle;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            RoundedColoredBox(color: color),
            10.widthBox,
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: title,
                    style: const TextStyle(
                        color: Vx.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  TextSpan(
                    text: '\n$subtitle',
                    style: const TextStyle(
                        color: Vx.black, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            )
          ],
        ),
        "Show More"
            .text
            .make()
            .box
            .color(Vx.white)
            .rounded
            .padding(const EdgeInsets.symmetric(horizontal: 10, vertical: 2))
            .make()
            .onTap(() => ontap)
      ],
    );
  }
}
