import 'package:evaly/common/button/circulariconbutton.dart';
import 'package:evaly/constant/stringconstant.dart';
import 'package:evaly/constant/tabscreen.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Orderlist extends StatelessWidget {
  const Orderlist({super.key});

  @override
  Widget build(BuildContext context) {


    return DefaultTabController(
      length: StringCons.tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: "Order List".text.semiBold.make(),
          actions: [
            CustomIconButton(
                iconcolor: Vx.black,
                backgroundColor: Vx.white,
                icon: Icons.question_mark_outlined,
                onPressed: () {})
          ],
          bottom: TabBar(
              physics: const AlwaysScrollableScrollPhysics(),
              isScrollable: true,
              tabs: StringCons.tabs.map((tab) => Tab(text: tab)).toList()),
        ),
        body: const TabBarView(children: TabScreens.tabScreen),
      ),
    );
  }
}





















