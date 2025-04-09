import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miza_app/features/authentification/screens/OnIntro/intro.dart';
import 'package:miza_app/utils/theme/theme.dart';
 class App extends StatelessWidget {
   const App({super.key});

   @override
   Widget build(BuildContext context) {
     return GetMaterialApp(
       themeMode: ThemeMode.system,
       theme: MizaAppTheme.lightTheme,
       darkTheme: MizaAppTheme.darkTheme,
       home: const OnIntroScreen(),
     );
   }
 }
