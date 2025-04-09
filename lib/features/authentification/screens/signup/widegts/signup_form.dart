import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:miza_app/features/authentification/screens/signup/widegts/verify_email.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
class MizaSignupForm extends StatelessWidget {
  const MizaSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child:Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: MizaTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(height: MizaSizes.spaceBtweenInputFields),
          ///lastname
          TextFormField(
            decoration: const InputDecoration(
                labelText: MizaTexts.lastName,
                prefixIcon: Icon(Iconsax.user)
            ),
          ),
          const SizedBox(height: MizaSizes.spaceBtweenInputFields),
          ///email
          TextFormField(
            decoration: const InputDecoration(
                labelText: MizaTexts.email,
                prefixIcon: Icon(Iconsax.direct)
            ),
          ),
          const SizedBox(height: MizaSizes.spaceBtweenInputFields),

          ///phone number
          TextFormField(
            decoration: const InputDecoration(
                labelText: MizaTexts.phone,
                prefixIcon: Icon(Iconsax.call)
            ),
          ),
          const SizedBox(height: MizaSizes.spaceBtweenInputFields),

          ///password
          TextFormField(
            decoration: const InputDecoration(
                labelText: MizaTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)
            ),
          ),
          const SizedBox(height: MizaSizes.spaceBetweenSections),
          ///sing up Button
          SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(()=> const VerifyEmailScreen()),style: ElevatedButton.styleFrom(backgroundColor: MizaColors.primary,side: const BorderSide(color:Colors.red)),child: const Text(MizaTexts.create)),),
          const SizedBox(height: MizaSizes.spaceBetweenItems),

        ],
      ),
    );
  }
}


