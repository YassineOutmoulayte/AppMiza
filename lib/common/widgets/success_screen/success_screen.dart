import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:miza_app/features/authentification/screens/login/login.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/images_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../../styles/spacing_styles.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SingleChildScrollView(
           child: Padding(
               padding: MizaSpacingStyle.paddingWithAppBarHeight * 2,
              child: Column(
                children: [
                  Image(image: const AssetImage(MizaImages.verifyEmail),width: MizaHelperFunctions.screenWidth() * 0.6,
                  ),
                  const SizedBox(height: MizaSizes.spaceBetweenSections),
                  ///titel & subTitel
                  Text(MizaTexts.yourAccountCreatedTitle,style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
                  const SizedBox(height: MizaSizes.spaceBetweenItems),
                  Text(MizaTexts.yourAccountCreatedSubTitel,style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
                  const SizedBox(height: MizaSizes.spaceBetweenSections),

                  ///button
                  SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(()=>const LoginScreen()),style: ElevatedButton.styleFrom(backgroundColor: MizaColors.primary,side: const BorderSide(color:Colors.red)), child: const Text(MizaTexts.continVer)),),
                ],
              ),
           ),
        ),
    );
  }
}
