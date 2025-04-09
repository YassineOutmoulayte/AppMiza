import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
class OnIntroPage  extends StatelessWidget {
  const OnIntroPage({super.key, required this.image, required this.title, required this.subTitel});
  final String image, title, subTitel;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(MizaSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: MizaHelperFunctions.screenWidth() * 0.8 ,
            height:MizaHelperFunctions.screenHeight() * 0.6,
            image:  AssetImage(image),
          ),
          Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
          const SizedBox(height: MizaSizes.spaceBetweenItems),
          Text(subTitel, style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}



