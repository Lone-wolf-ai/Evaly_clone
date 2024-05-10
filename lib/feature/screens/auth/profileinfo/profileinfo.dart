import 'package:evaly/common/button/customelevatedbutton.dart';
import 'package:evaly/common/text/titletext.dart';
import 'package:evaly/common/textfield.dart/customtextfield.dart';
import 'package:evaly/constant/stringconstant.dart';
import 'package:evaly/feature/controller/auth/infoprovide/infoprovider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(InfoPorvideController());

//function for select date and assign to controller
    void _handleDateSelection(BuildContext context) async {
      // Handle date picker and update text field
      final selectedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(DateTime.now().year - 100),
        lastDate: DateTime(DateTime.now().year + 100),
      );

      if (selectedDate != null) {
        final dateonly = selectedDate.toIso8601String().split('T')[0];
        controller.date.text = dateonly;
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              60.heightBox,
              //title
              const TitleText(title: StringCons.ppyitoprocced),
              16.heightBox,
              //full name title
              StringCons.fullName.text.semiBold.gray500.make(),
              8.heightBox,
              //full name textfield
              const CustomTextField(
                title: StringCons.fullName,
                prefixIcon: Icons.person,
              ),
              16.heightBox,
              //phone numver title
              StringCons.phoneNumber.text.semiBold.gray500.make(),
              8.heightBox,
              //phone number textfield
              const CustomTextField(
                title: StringCons.phoneNumber,
                prefixIcon: Icons.phone,
              ),
              16.heightBox,
              //gender selection box
              Obx(
                () => Row(
                  children: [
                    //male
                    GenderCard(
                      gender: StringCons.male,
                      ontap: () {
                        controller.ismantaped.value =
                            !controller.ismantaped.value;
                        controller.iswomantaped.value = false;
                      },
                      iconData: Icons.man,
                      istaped: controller.ismantaped.value,
                    ),
                    20.widthBox,
                    //female
                    GenderCard(
                      gender: StringCons.female,
                      ontap: () {
                        controller.iswomantaped.value =
                            !controller.iswomantaped.value;
                        controller.ismantaped.value = false;
                      },
                      iconData: Icons.woman,
                      istaped: controller.iswomantaped.value,
                    )
                  ],
                ),
              ),
              16.heightBox,
              //date of birth title
              StringCons.dateOfBirth.text.semiBold.gray500.make(),
              8.heightBox,
              //date of birth textfeild
              CustomTextField(
                controller: controller.date,
                title: StringCons.enterYourDateOfBirth,
                prefixIcon: Icons.edit_calendar,
                prefixfun: () => _handleDateSelection(context),
              ),
              const SizedBox(height: 16.0),
              //complete button 
              CustomElevatedButton(
                title: StringCons.completeProfile,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GenderCard extends StatelessWidget {
  const GenderCard({
    super.key,
    required this.ontap,
    required this.iconData,
    required this.istaped,
    required this.gender,
  });

  final VoidCallback ontap;
  final IconData iconData;
  final bool istaped;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 50,
        )
            .centered()
            .box
            .border(width: istaped ? 1 : 0.2)
            .height(70)
            .width(70)
            .roundedSM
            .white
            .make()
            .onTap(ontap),
        4.heightBox,
        gender.text.fontWeight(FontWeight.w600).gray700.make()
      ],
    );
  }
}
