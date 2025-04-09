import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:miza_app/features/authentification/screens/login/login.dart';
import 'package:miza_app/utils/constants/images_strings.dart';
import 'package:miza_app/utils/constants/sizes.dart';
import 'package:miza_app/utils/constants/text_strings.dart';
import 'package:miza_app/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/success_screen/success_screen.dart';
import '../../../../../utils/constants/colors.dart';
class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(()=>const LoginScreen()), icon:const Icon(CupertinoIcons.clear) )
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(MizaSizes.defaultSpace),
           child: Column(
             children: [
                 ///image
               Image(image: const AssetImage(MizaImages.verifyEmail),width: MizaHelperFunctions.screenWidth() * 0.6,
               ),
               const SizedBox(height: MizaSizes.spaceBetweenSections),
               ///titel & subTitel
               Text(MizaTexts.VerifyYourEmail,style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
               const SizedBox(height: MizaSizes.spaceBetweenItems),
               Text('yassineoutmoulayte@gmail.com',style:Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center ),
               const SizedBox(height: MizaSizes.spaceBetweenItems),
               Text(MizaTexts.subTitleEmail,style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
               const SizedBox(height: MizaSizes.spaceBetweenSections),

               ///button
               SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(()=> const SuccessScreen()),style: ElevatedButton.styleFrom(backgroundColor: MizaColors.primary,side: const BorderSide(color:Colors.red)), child: const Text(MizaTexts.continVer)),),
               const SizedBox(height: MizaSizes.spaceBetweenSections),
               SizedBox(width: double.infinity,child: TextButton(onPressed: (){}, child: const Text(MizaTexts.Resend)),)

             ],
           ),
        ),
      ),
    );
  }
}
