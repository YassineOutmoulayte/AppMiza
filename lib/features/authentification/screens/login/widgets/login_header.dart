import 'package:flutter/material.dart';

import '../../../../../utils/constants/images_strings.dart';




class MizaLoginHeader extends StatelessWidget {
  const MizaLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(MizaImages.AppLogo),
        )
      ],
    );
  }
}
