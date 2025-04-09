import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:miza_app/features/authentification/screens/signup/widegts/signup_form.dart';
import 'package:miza_app/utils/constants/sizes.dart';
import 'package:miza_app/utils/constants/text_strings.dart';

import '../../../../common/widgets/login_singup/form_divider.dart';
import '../../../../common/widgets/login_singup/social_buttons.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';
class SingupScreen extends StatelessWidget {
  const SingupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark =MizaHelperFunctions.isDarkMode(context);
    return  Scaffold(
       appBar: AppBar(),
      body: SingleChildScrollView(
        child:Padding(
            padding: EdgeInsets.all(MizaSizes.defaultSpace),
          child: Column(
            children: [
              ///title
              Text(MizaTexts.createAccoount,style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: MizaSizes.spaceBetweenSections),
              ///form
              MizaSignupForm(),
              const SizedBox(height: MizaSizes.spaceBetweenSections),
              /// Divider
              MizaFormDivider(dark: dark),
              const SizedBox(height: MizaSizes.spaceBetweenSections),

              ///Footer social buttons
              const MizaSocialButtons(),

            ],
          ),
        ) ,
      ),
    );
  }
}

