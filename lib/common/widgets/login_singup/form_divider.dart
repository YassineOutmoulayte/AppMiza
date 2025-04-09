import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/text_strings.dart';



class MizaFormDivider extends StatelessWidget {
  const MizaFormDivider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.center ,
      children: [
        Flexible(child: Divider(color: dark ? MizaColors.light: MizaColors.dark,thickness: 0.5,indent: 60,endIndent: 5)),
        Text(MizaTexts.orSignInWith,style: Theme.of(context).textTheme.labelMedium),
        Flexible(child: Divider(color: dark ? MizaColors.light: MizaColors.dark,thickness: 0.5,indent: 5,endIndent: 60)),

      ],
    );
  }
}



