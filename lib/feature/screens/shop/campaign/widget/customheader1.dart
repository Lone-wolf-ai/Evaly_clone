import 'package:evaly/common/button/circulariconbutton.dart';
import 'package:evaly/common/icon/customimgicon.dart';
import 'package:evaly/feature/screens/shop/campaign/controller/campaigncontroller.dart';
import 'package:evaly/feature/screens/shop/campaign/widget/campaigntitlebox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomHeader1 extends StatelessWidget {
  final VoidCallback sort;
  final VoidCallback filter;

  CustomHeader1({
    super.key,
    required this.sort,
    required this.filter,
  });

  final CustomHeaderController controller = Get.put(CustomHeaderController());

  @override
  Widget build(BuildContext context) {
    final List<String> boxtitle = ["Products", "Shops"];
    return SizedBox(
      height: 45,
      child: Row(
        children: [
          SizedBox(
            height: 40,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: boxtitle.length,
              itemBuilder: (BuildContext context, int index) {
                return Obx(() {
                  bool isSelected = index == controller.selectedIndex.value;
                  return CampaignTitlebox(
                    title: boxtitle[index],
                    controller: controller,
                    isSelected: isSelected,
                    index: index,
                  );
                });
              },
            ),
          ),
          const Spacer(),
          Obx(() {
            return controller.selectedIndex.value == 0
                ? SizedBox(
                  height: 50,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Customimageicon(
                          size: 20,
                          ontap: sort,
                          bgcolor: Vx.gray200,
                        ).paddingSymmetric(vertical: 0),
                        CustomIconButton(
                          icon: Icons.filter_alt,
                          onPressed: filter,
                          size: 20,
                          minimumSize: const Size(20, 20),
                          iconcolor: Vx.black,
                          backgroundColor: Vx.gray200,
                        ),
                      ],
                    ).paddingOnly(right: 10, bottom: 10),
                )
                : const SizedBox.shrink();
          }),
        ],
      ).box.white.make(),
    );
  }
}
