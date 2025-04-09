import 'package:flutter/material.dart';

class MizaDeviceUtils{
  static void hideKeyboard(BuildContext context){
    FocusScope.of(context).requestFocus(FocusNode());
  }
 static double getBottomNavigationBarHeight(){
    return kBottomNavigationBarHeight;
 }
  static double getAppBarHeight(){
    return kToolbarHeight;
  }
}