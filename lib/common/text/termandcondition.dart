import 'package:evaly/constant/stringconstant.dart';
import 'package:evaly/feature/controller/auth/register/registercontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class TermAndCondition extends StatelessWidget {
  const TermAndCondition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        10.widthBox,
        Obx(
          () => SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(
              activeColor: Vx.black,
              value: controller.checked.value,
              onChanged: (v) =>
                  controller.checked.value = !controller.checked.value,
            ),
          ),
        ),
        10.widthBox,
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                customtexspan(context, "${StringCons.agree} "),
                TextSpan(
                  text: "${StringCons.privacy} ",
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        fontWeightDelta: 1,
                        decoration: TextDecoration.underline,
                      ),
                ),
                customtexspan(context, "${StringCons.and} "),
                TextSpan(
                  text: "${StringCons.termscondition} ",
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        fontWeightDelta: 1,
                        decoration: TextDecoration.underline,
                      ),
                ),
                customtexspan(context, "${StringCons.ofevaly}."),
              ],
            ),
          ),
        ),
      ],
    );
  }

  TextSpan customtexspan(BuildContext context, String title) {
    return TextSpan(
        text: title,
        style: Theme.of(context)
            .textTheme
            .bodySmall!
            .apply(fontSizeDelta: 2, color: Vx.gray500, fontWeightDelta: 1));
  }
}