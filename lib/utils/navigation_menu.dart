import 'package:flutter/material.dart';
 import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:miza_app/features/shop/screens/home/home.dart';
class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(NavigationController());
    return  Scaffold(
      bottomNavigationBar: Obx(
        ()=>  NavigationBar(
          height: 70,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
         onDestinationSelected: (index)=>  controller.selectedIndex.value=index,
          destinations: [
            const NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            const NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            const NavigationDestination(icon: Icon(Iconsax.heart), label: 'Favorite'),
            const NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),

          ],),
      ),
      body: Obx(()=> controller.screens[controller.selectedIndex.value])
    );
  }
}


class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  final screens=[const HomeScreen(),Container(color:Colors.purple),Container(color: Colors.orange),Container(color: Colors.blue,)];
}

