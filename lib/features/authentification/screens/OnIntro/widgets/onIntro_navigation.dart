import 'package:flutter/material.dart';
import 'package:miza_app/features/authentification/controllers/intro/intro_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';
class OnIntoDoNavigation extends StatelessWidget {
  const OnIntoDoNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=OnIntroController.instance;
    final dark=MizaHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: MizaDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: MizaSizes.defaultSpace,
      child:  SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.doNavigationClick,
        count: 3,
        effect:  ExpandingDotsEffect(activeDotColor: dark ? MizaColors.light:MizaColors.dark ,dotHeight: 6 ),
      ),

    );
  }
}
