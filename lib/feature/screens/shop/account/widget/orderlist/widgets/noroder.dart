import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class NoOrder extends StatelessWidget {
  const NoOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          50.heightBox,
          const Icon(
            Icons.plagiarism_outlined,
            size: 100,
            color: Vx.gray500,
          ),
          "No orders found".text.gray600.size(18).make()
        ],
      );
  }
}