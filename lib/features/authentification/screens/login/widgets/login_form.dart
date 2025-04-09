import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:miza_app/features/authentification/screens/password_configuration/forget_password.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/navigation_menu.dart';
import '../../signup/singup.dart';
class MizaLoginForm extends StatelessWidget {
  const MizaLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:MizaSizes.spaceBetweenSections ),
        child: Column(
          children: [
            ///Email
            TextFormField(
              decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: MizaTexts.email,),
            ),
            const SizedBox(height: MizaSizes.spaceBtweenInputFields),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: MizaTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: MizaSizes.spaceBtweenInputFields / 2),
            /// Remember Me
            Row(
              children: [
                /// Remember Me
                // Row(
                //     children: [
                //     Checkbox(value: true, onChanged: (value){}),
                //     const Text(MizaTexts.rememberMe),
                //   ],
                // ),
                ///Forget Password
                TextButton(onPressed: ()=>Get.to(()=>const ForgetPassword()), child: const Text(MizaTexts.forgetPasswordTitel),)
              ],
            ),
            const SizedBox(height: MizaSizes.spaceBetweenSections),


            ///sign in Button
            SizedBox(width:double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(()=> const NavigationMenu()),  style: ElevatedButton.styleFrom(backgroundColor: MizaColors.primary,side: const BorderSide(color:Colors.red)),child: const Text(MizaTexts.signIn),)),
            const SizedBox(height: MizaSizes.spaceBetweenItems),
            ///Create Account Button
            SizedBox(width:double.infinity,child: OutlinedButton(onPressed: ()=>Get.to(()=>const SingupScreen()),style: ElevatedButton.styleFrom(side: const BorderSide(color:Colors.red),foregroundColor: MizaColors.primary), child:const Text(MizaTexts.createAccoount))),
            const SizedBox(height: MizaSizes.spaceBetweenSections),
          ],
        ),
      ),
    );
  }
}