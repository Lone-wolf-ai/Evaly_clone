import 'package:evaly/feature/screens/shop/account/widget/orderlist/widgets/noroder.dart';
import 'package:evaly/feature/screens/shop/account/widget/orderlist/widgets/ordercard.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ReturnScreens extends StatelessWidget {
  const ReturnScreens({super.key, this.noitem = true});
  final bool noitem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Vx.gray100,
        body: (noitem)
            ? SingleChildScrollView(
                child: ListView.builder(
                  itemCount: 1,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return const OrderCard();
                  },
                ),
              )
            : const NoOrder());
  }
}
