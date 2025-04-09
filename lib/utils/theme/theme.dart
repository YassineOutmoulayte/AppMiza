import 'package:flutter/material.dart';
import 'package:miza_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:miza_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:miza_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:miza_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:miza_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:miza_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:miza_app/utils/theme/custom_themes/text_theme.dart';

class MizaAppTheme{
   MizaAppTheme._();


   static ThemeData lightTheme= ThemeData(
         useMaterial3: true,
         fontFamily: 'Poppins',
         brightness: Brightness.light,
         primaryColor: Colors.blue,
         textTheme:MizaTextTheme.lightTextTheme,
         chipTheme: MizaChipTheme.lightChipTheme,
         scaffoldBackgroundColor: Colors.white,
         appBarTheme: MizaAppBarTheme.lightAppBarTheme,
         bottomSheetTheme: MizaBottomSheetTheme.lighBottomSheetTheme,
         elevatedButtonTheme: MizaElevatedButtonTheme.lightElevatedButtonTheme,
         outlinedButtonTheme: MizaOutlinedButtonTheme.lightOutlinedButtonTheme,
         inputDecorationTheme: MizaTextFormFieldTheme.lightInputDecorationTheme,
   );
   static ThemeData darkTheme= ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      textTheme:MizaTextTheme.darkTextTheme,
      chipTheme: MizaChipTheme.darkChipTheme,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: MizaAppBarTheme.darkAppBarTheme,
      bottomSheetTheme: MizaBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: MizaElevatedButtonTheme.dartElevatedButtonTheme,
      outlinedButtonTheme: MizaOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: MizaTextFormFieldTheme.darkInputDecorationTheme,
   );
}