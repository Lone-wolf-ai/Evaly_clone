import 'package:evaly/common/button/customelevatedbutton.dart';
import 'package:evaly/common/button/faqhelp.dart';
import 'package:evaly/common/button/suggesandbutton.dart';
import 'package:evaly/common/textfield.dart/customtextfield.dart';
import 'package:evaly/constant/imageconstant.dart';
import 'package:evaly/constant/stringconstant.dart';
import 'package:evaly/feature/controller/auth/login/logincontroller.dart';
import 'package:evaly/feature/screens/auth/forgetscreen/forgetpassword.dart';
import 'package:evaly/feature/screens/auth/loginscreen/widgets/loginwidgets.dart';
import 'package:evaly/feature/screens/auth/registerscreen/registerscreen.dart';
import 'package:evaly/feature/screens/shop/home/homescreen.dart';
import 'package:evaly/navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controler = Get.put(LoginController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: const Icon(
            Icons.close_rounded,
          ),
        ),
        actions: const [FaqHelp()],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            160.heightBox,
            //evaly logo
            const EvalyLogo(),
            //textfield
            160.heightBox,
            Form(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const CustomTextField(
                    title: 'Email Address',
                    prefixIcon: Icons.email_outlined,
                  ),
                  16.heightBox,
                  Obx(
                    () => CustomTextField(
                      title: 'Password',
                      obscureText: controler.isobscured.value,
                      prefixIcon: Icons.lock_outline_rounded,
                      suffixIcon: controler.isobscured.value
                          ? Iconsax.eye4
                          : Iconsax.eye_slash4,
                      suffixfun: () => controler.isobscured.value =
                          !controler.isobscured.value,
                    ),
                  ),
                  //2.heightBox,
                  TextButton(
                      onPressed: ()=>Get.to(()=>const ForgetPassword()),
                      child: "Forget Password?".text.gray500.make()),
                  10.heightBox,
                  CustomElevatedButton(
                    title: 'Sign In',
                    onPressed: ()=>Get.to(()=>const HomeScreen()),
                  ),
                  8.heightBox,
                  "Or".text.gray500.semiBold.make().centered(),
                  8.heightBox,
                  CustomElevatedButton(
                      title: 'Sign in with Google',
                      leadingicon: ImageCons.googlelogo,
                      backgroundColor: Colors.white,
                      textcolor: Colors.black,
                      applyborder: true,
                      onPressed: () {}),
                  100.heightBox,
                  Suggandbutton(
                    buttontitlecolor: Vx.red600,
                    title: StringCons.dontacc,
                    buttontitle: StringCons.signup,
                    ontap: ()=>Get.to(()=>const RegisterScreen()),
                  )
                ],
              ),
            ))
            //
          ],
        ),
      ),
    );
  }
}
