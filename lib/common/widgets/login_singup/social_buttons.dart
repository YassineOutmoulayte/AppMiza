import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/images_strings.dart';
import '../../../utils/constants/sizes.dart';


class MizaSocialButtons extends StatelessWidget {
  const MizaSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: MizaColors.light),borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
              width: MizaSizes.iconMd,
              height: MizaSizes.iconMd,
              image:AssetImage(MizaImages.google) ,
            ),
          ),
        ),
        const SizedBox(width: MizaSizes.spaceBetweenItems),
        Container(
          decoration: BoxDecoration(border: Border.all(color: MizaColors.light),borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: (){},
              icon: const Image(
                width: MizaSizes.iconMd,
                height: MizaSizes.iconMd,
                image:AssetImage(MizaImages.facebook) ,
              )
          ),
        ),
      ],
    );
  }
}



