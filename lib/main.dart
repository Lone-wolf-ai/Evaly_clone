import 'package:evaly/constant/imageconstant.dart';
import 'package:evaly/feature/screens/auth/loginscreen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Provide TickerProvider before building the app

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: VerticalTabBar(),
    );
  }
}

// class Categories extends StatelessWidget {
//   const Categories({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: "Categories".text.bold.make(),
//         ),
//         body: VerticalTabWidget(tabItems: [
//           TabItem(title: "G", iconPath: ImageCons.watch1),
//           TabItem(title: "G", iconPath: ImageCons.watch1),
//           TabItem(title: "G", iconPath: ImageCons.watch1),
//           TabItem(title: "G", iconPath: ImageCons.watch1),
//           TabItem(title: "G", iconPath: ImageCons.watch1),
//           TabItem(title: "G", iconPath: ImageCons.watch1),
//           TabItem(title: "G", iconPath: ImageCons.watch1),
//           TabItem(title: "G", iconPath: ImageCons.watch1),
//         ], tabScreens: [
//           Container()
//         ]));
//   }
// }

class VerticalTabController extends GetxController {
  var selectedIndex = 0.obs;

  void changeTabIndex(int index) {
    selectedIndex.value = index;
  }
}

class VerticalTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final VerticalTabController controller = Get.put(VerticalTabController());
    final List<Widget> tabScreens = [
      CategoriesDetails(),
      Center(child: Text("Screen 2")),
      Center(child: Text("Screen 3")),
      Center(child: Text("Screen 4")),
      Center(child: Text("Screen 5")),
      Center(child: Text("Screen 6")),
      Center(child: Text("Screen 7")),
      Center(child: Text("Screen 8")),
      Center(child: Text("Screen 9")),
      Center(child: Text("Screen 10")),
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
    );
  }
}

class ImgWithTitle extends StatelessWidget {
  const ImgWithTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Image(
          image: AssetImage(ImageCons.watch1),
          width: 80,
          height: 80,
          fit: BoxFit.contain,
        ).box.gray100.roundedSM.make(),
        Expanded(child: "Title".text.maxLines(2).center.make()),
      ],
    );
  }
}

class CategoriesDetails extends StatelessWidget {
  const CategoriesDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) {
          return 10.heightBox;
        },
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Tile"
                  .text
                  .size(18)
                  .bold
                  .make()
                  .paddingOnly(left: 20, bottom: 10),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return const ImgWithTitle();
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
