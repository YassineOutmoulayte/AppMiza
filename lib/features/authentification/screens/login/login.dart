import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:miza_app/common/styles/spacing_styles.dart';
import 'package:miza_app/common/widgets/login_singup/form_divider.dart';
import 'package:miza_app/features/authentification/screens/login/widgets/login_form.dart';
import 'package:miza_app/features/authentification/screens/login/widgets/login_header.dart';
import 'package:miza_app/utils/constants/colors.dart';
import 'package:miza_app/utils/constants/images_strings.dart';
import 'package:miza_app/utils/constants/sizes.dart';
import 'package:miza_app/utils/constants/text_strings.dart';
import 'package:miza_app/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/login_singup/social_buttons.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark =MizaHelperFunctions.isDarkMode(context);
    return  Scaffold(
      body:SingleChildScrollView(
        child:Padding(
            padding: MizaSpacingStyle.paddingWithAppBarHeight,
             child: Column(
               children: [
                 ///logo
                 const MizaLoginHeader(),

                 ///form
                 const MizaLoginForm(),

                 /// Divider
                 MizaFormDivider(dark: dark),
                 const SizedBox(height: MizaSizes.spaceBetweenSections),

                 ///Footer
                 const MizaSocialButtons(),
               ],
             ),
        ) ,
      ) ,
    );
  }
}

