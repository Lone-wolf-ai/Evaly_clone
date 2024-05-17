import 'package:evaly/feature/screens/shop/home/categories/widgets/categoriesdetail.dart';
import 'package:evaly/feature/screens/shop/home/categories/widgets/imgwithtitle.dart';
import 'package:evaly/navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class VerticalTabController extends GetxController {
  var selectedIndex = 0.obs;

  void changeTabIndex(int index) {
    selectedIndex.value = index;
  }
}

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    final VerticalTabController controller = Get.put(VerticalTabController());
    final List<Widget> tabScreens = [
      const CategoriesDetails(),
      const Center(child: Text("Screen 2")),
      const Center(child: Text("Screen 3")),
      const Center(child: Text("Screen 4")),
      const Center(child: Text("Screen 5")),
      const Center(child: Text("Screen 6")),
      const Center(child: Text("Screen 7")),
      const Center(child: Text("Screen 8")),
      const Center(child: Text("Screen 9")),
      const Center(child: Text("Screen 10")),
    ];

    return Scaffold(
      appBar: AppBar(
        title: "Categories".text.bold.make(),
      ),
      body: SafeArea(
        child: Row(
          children: [
            // Tab Bar
            SizedBox(
              width: 100,
              child: ListView.separated(
                itemCount: 10,
                separatorBuilder: (BuildContext context, int index) {
                  return 10.heightBox;
                },
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      controller.changeTabIndex(index);
                    },
                    child: Obx(
                      () => Container(
                        color: Vx.white,
                        child: Row(
                          children: [
                            AnimatedContainer(
                              clipBehavior: Clip.hardEdge,
                              curve: Curves.linear,
                              duration: const Duration(milliseconds: 300),
                              height: controller.selectedIndex.value == index
                                  ? 120
                                  : 0,
                              width: 5,
                              color: Colors.black,
                            ),
                            Expanded(
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 500),
                                height: 120,
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 0),
                                child: const ImgWithTitle(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // Tab Screen
            Expanded(
              child: Obx(() => tabScreens[controller.selectedIndex.value]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNav(applyPop: true,),
    );
  }
}
