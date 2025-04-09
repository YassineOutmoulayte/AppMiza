import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:miza_app/features/authentification/screens/password_configuration/reset_password.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';



class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:  Padding(
          padding: EdgeInsets.all(MizaSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                ///Head
                Text(MizaTexts.forgetPasswordTitel, style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: MizaSizes.spaceBetweenItems),
                Text(MizaTexts.forgetPasswordTitel,style: Theme.of(context).textTheme.labelMedium),
                const SizedBox(height: MizaSizes.spaceBetweenSections *2),

              ///text filed
               TextFormField(
                 decoration: InputDecoration(
                   labelText: MizaTexts.email,prefixIcon: Icon(Iconsax.direct_right)),
               ),
              const SizedBox(height: MizaSizes.spaceBetweenSections ),

              ///button
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=>Get.off (()=>const ResetPassword()),style: ElevatedButton.styleFrom(backgroundColor: MizaColors.primary,side: const BorderSide(color:Colors.red)), child: Text(MizaTexts.submit)))
            ],
          ),
      ),
    );
  }
}
