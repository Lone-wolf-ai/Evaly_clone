import 'package:evaly/feature/screens/shop/account/accountscreen.dart';
import 'package:evaly/feature/screens/shop/cart/cartscreen.dart';
import 'package:evaly/feature/screens/shop/home/homescreen.dart';
import 'package:evaly/feature/screens/shop/home/widgets/customlisttitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class MyDrawer extends StatelessWidget {
  final String userName;
  final String userEmail;

  const MyDrawer({
    super.key,
    required this.userName,
    required this.userEmail,
  });

  @override
  Widget build(BuildContext context) {
    final w=MediaQuery.of(context).size.width;
    return Drawer(
      width:w/1.5,
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
                  backgroundImage: NetworkImage(
                    "https://placeimg.com/640/480/people", // Replace with your image URL
                  ),
                ),
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
                title: 'Home', icon: Icons.home_outlined, ontap: ()=>Get.to(const HomeScreen())),
            CustomListTitle(
                title: 'Account', icon: Icons.person_outline, ontap: ()=>Get.to(AccountScreen())),
            CustomListTitle(
                title: 'Orders', icon: Icons.request_page_outlined, ontap: () {}),
            CustomListTitle(
                title: 'Cart', icon: Icons.shopping_cart_outlined, ontap: ()=>Get.to(ShoppingCart())),
            CustomListTitle(
                title: 'Wishlist', icon: Icons.favorite_border_outlined, ontap: () {}),
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
