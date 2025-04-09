import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:miza_app/features/authentification/controllers/intro/intro_controller.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';
class OnIntroNextButton extends StatelessWidget {
  const OnIntroNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=MizaHelperFunctions.isDarkMode(context);
    return Positioned(
        right: MizaSizes.defaultSpace,
        bottom: MizaDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: ()=> OnIntroController.instance.nextPage(),
          style: ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor : dark ? MizaColors.primary : Colors.black ),
          child: const Icon(Iconsax.arrow_right_3),
        ));
  }
}

