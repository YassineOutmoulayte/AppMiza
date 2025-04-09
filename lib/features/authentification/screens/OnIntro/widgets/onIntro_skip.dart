import 'package:flutter/material.dart';
import 'package:miza_app/features/authentification/controllers/intro/intro_controller.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class OnIntroSkip extends StatelessWidget {
  const OnIntroSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top:MizaDeviceUtils.getAppBarHeight(),
      right:MizaSizes.defaultSpace,
      child: TextButton(
        onPressed: ()=>OnIntroController.instance.skipPage(),
        child: const Text("ignorer"),
      ),
    );
  }
}
