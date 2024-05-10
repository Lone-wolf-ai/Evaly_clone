import 'package:evaly/common/button/customelevatedbutton.dart';
import 'package:evaly/common/text/titletext.dart';
import 'package:evaly/common/textfield.dart/customtextfield.dart';
import 'package:evaly/constant/stringconstant.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleText(title: StringCons.forgotpass),
              10.heightBox,
              StringCons.fogetpasstitle.text.size(15).gray700.make(),
              30.heightBox,
              const CustomTextField(title: StringCons.emailaddress, prefixIcon:Icons.email_outlined),
              20.heightBox,
              CustomElevatedButton(title:StringCons.continu , onPressed: (){})
            ],
          ),
        ),
      ),
    );
  }
}
