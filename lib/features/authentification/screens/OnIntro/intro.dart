import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:miza_app/features/authentification/controllers/intro/intro_controller.dart';
import 'package:miza_app/features/authentification/screens/OnIntro/widgets/onIntro_Page.dart';
import 'package:miza_app/features/authentification/screens/OnIntro/widgets/onIntro_navigation.dart';
import 'package:miza_app/features/authentification/screens/OnIntro/widgets/onIntro_next_button.dart';
import 'package:miza_app/features/authentification/screens/OnIntro/widgets/onIntro_skip.dart';
import 'package:miza_app/utils/constants/colors.dart';
import 'package:miza_app/utils/constants/images_strings.dart';
import 'package:miza_app/utils/constants/text_strings.dart';
import 'package:miza_app/utils/device/device_utility.dart';
import 'package:miza_app/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../utils/constants/sizes.dart';


class OnIntroScreen extends StatelessWidget {
  const OnIntroScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(OnIntroController());
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scroll pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnIntroPage(
                  image: MizaImages.onIntroImage1,
                  title: MizaTexts.onTitel1,
                  subTitel: MizaTexts.onSubTitel1
              ),
              OnIntroPage(
                  image: MizaImages.onIntroImage2,
                  title: MizaTexts.onTitel2,
                  subTitel: MizaTexts.onSubTitel2
              ),
              OnIntroPage(
                  image: MizaImages.onIntroImage3,
                  title: MizaTexts.onTitel3,
                  subTitel: MizaTexts.onSubTitel3
              ),
            ]
          ),
          /// skip Button
          const OnIntroSkip(),
          const OnIntoDoNavigation(),
          ///circular Button
          const OnIntroNextButton(),
        ],
      ),
    );
  }
}

