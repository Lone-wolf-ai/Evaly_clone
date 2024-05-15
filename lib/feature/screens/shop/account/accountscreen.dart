import 'package:evaly/common/button/circulariconbutton.dart';
import 'package:evaly/common/text/titletext.dart';
import 'package:evaly/constant/imageconstant.dart';
import 'package:evaly/feature/screens/shop/account/widget/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> linercolors = [Vx.white, Vx.gray400];
    return Scaffold(
      appBar: AppBar(
        title: "Account".text.size(24).bold.make(),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
        ],
      ),
      body: Column(
        children: [
          const Profilewitheditbutton().centered(),
          20.heightBox,
          const TitleText(
            title: "Bijoy Ahemed",
            size: 20,
          ),
          "tanjimjoy7@gmail.com".text.gray500.make(),
          10.heightBox,
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.star,
                size: 16,
                color: Vx.amber500,
              ),
              "0 Points".text.bold.make()
            ],
          )
              .box
              .rounded
              .gray200
              .padding(
                  const EdgeInsets.only(left: 5, right: 10, top: 2, bottom: 2))
              .make(),
          20.heightBox,
          const FourButtonRow(),
          20.heightBox,
          const Divider(
            thickness: 8,
            color: Vx.gray100,
          ),
          const FourTitlesWithIcons()
        ],
      ),
    );
  }
}

class FourTitlesWithIcons extends StatelessWidget {
  const FourTitlesWithIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 20),
      child: Column(
        children: [
          IconListTitle(
            ontap: () {},
            color: Vx.green500.withOpacity(0.85),
          ),
          10.heightBox,
          IconListTitle(
            title: "Wishlist",
            icon: Icons.favorite_border_outlined,
            ontap: () =>Get.to(()=> const Wishlist()),
            color: Vx.red500,
          ),
          10.heightBox,
          IconListTitle(
            title: "Notification",
            ontap: () {},
            icon: Icons.notifications_outlined,
            color: Vx.amber400,
          ),
          10.heightBox,
          IconListTitle(
            icon: Icons.lock_outline,
            title: "Change Password",
            ontap: () {},
            color: Vx.blue500,
          )
        ],
      ),
    );
  }
}

class IconListTitle extends StatelessWidget {
  const IconListTitle({
    super.key,
    this.icon = Icons.person_add_outlined,
    required this.ontap,
    this.title = "Old Accounts & Orders",
    required this.color,
  });
  final IconData icon;
  final VoidCallback ontap;
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      leading: CustomIconButton(
        icon: icon,
        backgroundColor: color,
      ),
      title: title.text.fontWeight(FontWeight.w400).make(),
    );
  }
}

class FourButtonRow extends StatelessWidget {
  const FourButtonRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonwithTitle(
            title: "Orders",
            color: Vx.green500,
            onpressd: () {},
            icon: Icons.assignment),
        50.widthBox,
        ButtonwithTitle(
            title: "Profile",
            color: Vx.blue500,
            onpressd: () {},
            icon: Icons.person),
        50.widthBox,
        ButtonwithTitle(
            title: "Adress",
            color: Vx.orange600,
            onpressd: () {},
            icon: Icons.location_pin),
        50.widthBox,
        ButtonwithTitle(
            title: "Message",
            color: Vx.yellow500,
            onpressd: () {},
            icon: Icons.message),
      ],
    );
  }
}

class ButtonwithTitle extends StatelessWidget {
  const ButtonwithTitle({
    super.key,
    required this.title,
    required this.color,
    required this.onpressd,
    required this.icon,
  });
  final String title;
  final Color color;
  final VoidCallback onpressd;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIconButton(
          minimumSize: const Size(50, 50),
          size: 24,
          iconcolor: color,
          icon: icon,
          onPressed: onpressd,
        ),
        title.text.gray500.sm.make()
      ],
    );
  }
}

class Profilewitheditbutton extends StatelessWidget {
  const Profilewitheditbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const Image(
        width: 80,
        height: 60,
        color: Vx.gray400,
        fit: BoxFit.contain,
        image: AssetImage(ImageCons.person),
      )
          .centered()
          .box
          .height(100)
          .width(100)
          .color(Vx.gray200)
          .roundedFull
          .make()
          .box
          .padding(const EdgeInsets.symmetric(horizontal: 40))
          .make(),
      Positioned(
        top: 50,
        left: 100,
        child: const CustomIconButton(
          icon: Icons.edit,
          size: 18,
          minimumSize: Size(30, 30),
          backgroundColor: Vx.white,
          iconcolor: Vx.black,
        ).box.shadow.roundedFull.make(),
      )
    ]);
  }
}
