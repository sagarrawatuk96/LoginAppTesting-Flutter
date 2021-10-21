import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/navigation/controller/navigation_controller.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({Key? key}) : super(key: key);
  final NavigationController navigationController =
      Get.put(NavigationController());
  @override
  Widget build(BuildContext context) => Obx(
        () => Scaffold(
            body: navigationController
                .pages[navigationController.selectedIndex.value],
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.black,
              items: navigationController.navBarItems,
              type: BottomNavigationBarType.fixed,
              currentIndex: navigationController.selectedIndex.value,
              selectedItemColor: Colors.white,
              selectedFontSize: 10,
              unselectedFontSize: 10,
              unselectedItemColor: Colors.grey,
              iconSize: 25,
              onTap: (index) => navigationController.onItemTapped(index),
            ),),
      );
}
