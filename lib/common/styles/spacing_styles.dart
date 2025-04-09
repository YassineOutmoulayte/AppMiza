import 'package:flutter/material.dart';
import 'package:miza_app/utils/constants/sizes.dart';



class MizaSpacingStyle{
  static const EdgeInsetsGeometry paddingWithAppBarHeight =EdgeInsets.only(
    top: MizaSizes.appBarHeight,
    left: MizaSizes.defaultSpace,
    bottom: MizaSizes.defaultSpace,
    right: MizaSizes.defaultSpace,
  );
}