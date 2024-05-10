import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';

class NavigationBarMenue extends StatelessWidget {
  const NavigationBarMenue({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (value) => controller.selectedIndex.value = value,
          backgroundColor: Colors.white,
          indicatorColor: Vx.white,
          destinations: List.generate(
            4, 
            (index) => _buildNavigationDestination(
              index,
              controller.selectedIndex.value == index, 
            ),
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }

  Widget _buildNavigationDestination(int index, bool isSelected) {
    final icon = _getIcon(index); 

    return NavigationDestination(
      icon: isSelected ? Icon(icon, color: Colors.black) : Icon(icon,color: Vx.gray500,), 
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
        return 'Campign';
      case 2:
        return 'Cart';
      case 3:
        return 'Account';
      default:
        throw Exception('Invalid index for NavigationDestination label');
    }
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    Container(), 
    Container(),
    Container(),
    Container(),
  ];
}
