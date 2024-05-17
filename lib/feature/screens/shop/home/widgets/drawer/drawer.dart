import 'package:evaly/constant/imageconstant.dart';
import 'package:evaly/feature/screens/shop/account/accountscreen.dart';
import 'package:evaly/feature/screens/shop/account/widget/orderlist/orderlist.dart';
import 'package:evaly/feature/screens/shop/account/widget/wishlist.dart';
import 'package:evaly/feature/screens/shop/cart/cartscreen.dart';
import 'package:evaly/feature/screens/shop/home/homescreen.dart';
import 'package:evaly/feature/screens/shop/home/widgets/drawer/widget/customlisttitle.dart';
import 'package:evaly/navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class MyDrawer extends StatelessWidget {
  final String userName;
  final String userEmail;
  final GlobalKey<ScaffoldState> scaffoldKey;

  const MyDrawer({
    super.key,
    required this.userName,
    required this.userEmail,
    required this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final w = MediaQuery.of(context).size.width;
    return Drawer(
      width: w / 1.5,
      child: ClipRRect(
        borderRadius: BorderRadius.zero, // Remove rounded corners
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            40.heightBox,
            Column(
              children: [
                const SizedBox(height: 20.0), // Adjust top padding as needed
                const CircleAvatar(
                    radius: 40.0,
                    backgroundColor: Vx.gray300,
                    backgroundImage: AssetImage(ImageCons.person)),
                const SizedBox(height: 16.0),
                Text(
                  userName,
                  style: const TextStyle(
                    fontSize: 18.0,
                    color: Colors.black, // Adjust text color
                  ),
                ),
                Text(
                  userEmail,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Vx.gray600, // Adjust text color
                  ),
                ),
              ],
            ),
            20.heightBox,
            CustomListTitle(
                title: 'Home',
                icon: Icons.home_outlined,
                ontap: () {
                  if (controller.selectedIndex.value != 0) {
                    scaffoldKey.currentState?.closeDrawer();
                    Get.offAll(() => const HomeScreen());
                  }
                }),
            CustomListTitle(
                title: 'Account',
                icon: Icons.person_outline,
                ontap: () {
                  controller.selectedIndex.value = 3;
                  controller.navigateTo(controller.selectedIndex.value);
                  scaffoldKey.currentState?.closeDrawer();
                }),
            CustomListTitle(
                title: 'Orders',
                icon: Icons.request_page_outlined,
                ontap: () {
                  Get.to(() => const Orderlist());
                   scaffoldKey.currentState?.closeDrawer();
                }),
            CustomListTitle(
                title: 'Cart',
                icon: Icons.shopping_cart_outlined,
                ontap: () {
                  controller.selectedIndex.value = 2;
                  controller.navigateTo(controller.selectedIndex.value);
                  scaffoldKey.currentState?.closeDrawer();
                }),
            CustomListTitle(
                title: 'Wishlist',
                icon: Icons.favorite_border_outlined,
                ontap: ()=>Get.to(()=>const Wishlist())),
            CustomListTitle(
                title: 'My eStore', icon: Icons.store, ontap: () {}),
            CustomListTitle(
                title: 'Contact Us', icon: Icons.phone_outlined, ontap: () {}),
            CustomListTitle(
                title: 'Terms & Conditons', icon: Icons.copy, ontap: () {}),
          ],
        ),
      ),
    );
  }
}
