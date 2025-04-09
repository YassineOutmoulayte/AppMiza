import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/images_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(onPressed: () =>Get.back(), icon: const Icon(CupertinoIcons.clear))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(MizaSizes.defaultSpace),
            child: Column(
              children: [
                Image(image: const AssetImage(MizaImages.verifyEmail),width: MizaHelperFunctions.screenWidth() * 0.6,),
                const SizedBox(height: MizaSizes.spaceBetweenSections),
                ///titel & subTitel
                Text(MizaTexts.changeYourPasswordTitel,style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
                const SizedBox(height: MizaSizes.spaceBetweenItems),
                Text(MizaTexts.changeYourPasswordSubTitel,style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
                const SizedBox(height: MizaSizes.spaceBetweenSections),
                ///button
                SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: MizaColors.primary,side: const BorderSide(color:Colors.red)), child: const Text(MizaTexts.done)),),
                const SizedBox(height: MizaSizes.spaceBetweenItems),
                SizedBox(width: double.infinity,child: TextButton(onPressed: (){}, child: const Text(MizaTexts.Resend)),),


              ],
            ),
          ),
        ),
      );
  }
}
