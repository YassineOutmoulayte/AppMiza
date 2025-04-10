import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MizaHelperFunctions{
  static Color? getColor(String value){
    if(value=='Green'){
      return Colors.green;
    }else if(value=='Green'){
      return Colors.green;
    }else if(value=='Red'){
      return Colors.red;
    }else if(value=='Blue'){
       return Colors.blue;
    }else if(value=='Pink'){
      return Colors.pink;
    } else if(value=='Grey'){
       return Colors.grey;
    } else if(value=='Purpale'){
      return Colors.purple;
    }else if(value=='Black'){
      return Colors.black;
    }else if(value=='White'){
      return Colors.white;
    } else if(value=='Brown'){
      return Colors.brown;
    } else if(value=='Teal'){
       return Colors.teal;
    } else if(value=='Indigo'){
       return Colors.indigo;
    } else{
      return null ;
    }
  }

  static void showSnackBar(String message){
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
  static void showAlert(String titel,String message){
    showDialog(
      context: Get.context!,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text(titel),
          content: Text(message),
          actions: [
            TextButton(
                onPressed: ()=> Navigator.of(context).pop(),
                child: const Text('Ok'),
            )
          ],
        );
      }
    );
  }
  static void navigateToScreen(BuildContext context,Widget screen){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_)=>screen),
        );
  }
  static String truncateText (String text, int maxLength) {
    if(text.length<= maxLength){
      return text;
    }else{
      return '${text.substring(0,maxLength)}...';
    }
  }
  static bool isDarkMode(BuildContext context){
    return Theme.of(context).brightness==Brightness.dark;
  }
  static Size screenSize(){
    return MediaQuery.of(Get.context!).size;
  }
  static double screenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }
  static double screenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }

}

