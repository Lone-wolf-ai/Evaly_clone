import 'package:evaly/common/card/list/companycardlist.dart';
import 'package:evaly/feature/screens/shop/home/widgets/titlesubtitlesubtitlebutton.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ShopCardlistTitle extends StatelessWidget {
  const ShopCardlistTitle({
    super.key,
    this.title='Top Rated Shops',
     this.subtitle='Loved by Customers Like You',
     this.color=Vx.purple600,
     this.autoscroll=false,
    required this.ontap,
  });
  final String title;
  final String subtitle;
  final Color color;
  final bool autoscroll;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleSubtitleandButton(
          title: title,
          subtitle: subtitle,
          ontap: () => ontap,
          color: color,
        ).box.padding(const EdgeInsets.only(right: 10)).make(),
        20.heightBox,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ShopCardList(autoscroll: autoscroll),
        ),
      ],
    ).box.padding(const EdgeInsets.only(top: 20)).make();
  }
}
