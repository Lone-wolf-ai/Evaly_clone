import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TileandCollections extends StatelessWidget {
  const TileandCollections(
      {super.key,
      this.title = 'Gas Stoves',
      required this.titleontap,
      required this.individualontap});

  final String title;
  final VoidCallback titleontap;
  final VoidCallback individualontap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        title.text.color(Vx.blue400).semiBold.make().onTap(() => titleontap),
        5.widthBox,
        Center(
          child: Container(
            width: 4,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.blue[500], // Color gray-blue
              shape: BoxShape.circle,
            ),
          ),
        ),
        5.widthBox,
        "Individual Collection"
            .text
            .color(Vx.blue400)
            .semiBold
            .make()
            .onTap(() => individualontap),
      ],
    );
  }
}