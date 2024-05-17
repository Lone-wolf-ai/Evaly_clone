import 'package:evaly/feature/screens/shop/account/accountscreen.dart';
import 'package:evaly/feature/screens/shop/campaign/campaign.dart';
import 'package:evaly/feature/screens/shop/cart/cartscreen.dart';
import 'package:evaly/feature/screens/shop/home/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';



class NavigationController extends GetxController {
  static NavigationController get instance=>Get.find();
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const CampignScreen(),
    const ShoppingCart(),
    const AccountScreen(),
  ];
  void navigateTo(int index) {
    if(selectedIndex.value!=index){
    selectedIndex.value = index;
    Get.offAll(()=>screens[index], transition: Transition.fadeIn,curve:Curves.easeIn);
    }
  }
}

class BottomNav extends StatelessWidget {
  const BottomNav({super.key, this.applyPop = false});
  final bool applyPop;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Obx(
      () => ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(20.0),
        ),
        child: NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (value) {
            if (applyPop) Navigator.pop(context);
            controller.navigateTo(value);
          },
          backgroundColor: Colors.white,
          indicatorColor: Vx.white,
          destinations: List.generate(
            4,
            (index) => buildNavigationDestination(
              index,
              controller.selectedIndex.value == index,
            ),
          ),
        ),
      ).box.shadowSm.rounded.make(),
    );
  }
}

Widget buildNavigationDestination(int index, bool isSelected) {
  final icon = _getIcon(index);

  return NavigationDestination(
    icon: isSelected
        ? Icon(icon, color: Colors.black)
        : Icon(icon, color: Vx.gray500),
    label: _getLabel(index),
  );
}

IconData _getIcon(int index) {
  switch (index) {
    case 0:
      return Icons.home_outlined;
    case 1:
      return Icons.discount_outlined;
    case 2:
      return Icons.shopping_cart_outlined;
    case 3:
      return Iconsax.user;
    default:
      throw Exception('Invalid index for NavigationDestination');
  }
}

String _getLabel(int index) {
  switch (index) {
    case 0:
      return 'Home';
    case 1:
      return 'Campaign';
    case 2:
      return 'Cart';
    case 3:
      return 'Account';
    default:
      throw Exception('Invalid index for NavigationDestination label');
  }
}
