import 'package:evaly/common/button/customelevatedbutton.dart';
import 'package:evaly/common/button/faqhelp.dart';
import 'package:evaly/common/button/suggesandbutton.dart';
import 'package:evaly/common/text/termandcondition.dart';
import 'package:evaly/common/text/titletext.dart';
import 'package:evaly/common/textfield.dart/customtextfield.dart';
import 'package:evaly/constant/stringconstant.dart';
import 'package:evaly/feature/controller/auth/register/registercontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controler = Get.put(RegisterController());
    return Scaffold(
      appBar: AppBar(
        actions: const [FaqHelp()],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.heightBox,
              const TitleText(title: StringCons.createaccount),
              16.heightBox,
              const CustomTextField(
                  title: StringCons.fullName,
                  prefixIcon: Icons.person_outlined),
              16.heightBox,
              const CustomTextField(
                  title: StringCons.emailaddress,
                  prefixIcon: Icons.email_outlined),
              16.heightBox,
              Obx(
                () => CustomTextField(
                  title: StringCons.password,
                  obscureText: controler.isobscured.value,
                  prefixIcon: Icons.lock_outline_rounded,
                  suffixIcon: controler.isobscured.value
                      ? Iconsax.eye4
                      : Iconsax.eye_slash4,
                  suffixfun: () =>
                      controler.isobscured.value = !controler.isobscured.value,
                ),
              ),
              20.heightBox,
              const TermAndCondition(),
              20.heightBox,
              CustomElevatedButton(title: StringCons.signup, onPressed: () {}),
              40.heightBox,
              const Suggandbutton(
                  title: StringCons.alreadyhaveaccount,
                  titlecolor: Vx.gray700,
                  buttontitle: StringCons.signin,
                  buttontitlecolor: Vx.black),
            ],
          ),
        ),
      ),
    );
  }
}
