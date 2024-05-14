import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ShowAllButton extends StatelessWidget {
  const ShowAllButton({
    super.key,
    this.ontap,
  });
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        "Show All".text.make(),
        const Icon(
          Icons.arrow_forward_ios,
          size: 16,
        )
      ],
    )
        .box
        .padding(const EdgeInsets.symmetric(horizontal: 10, vertical: 4))
        .rounded
        .white
        .make()
        .onTap(() => ontap);
  }
}
