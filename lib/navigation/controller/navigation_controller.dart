import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/home/view/home.dart';

class NavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;

  List<BottomNavigationBarItem> navBarItems = [
    const BottomNavigationBarItem(
        icon: Padding(
          key: Key('bottom_home_icon'),
          padding: EdgeInsets.only(bottom: 3),
          child: Icon(
            Icons.home_filled,
          ),
        ),
        label: 'Home'),
    const BottomNavigationBarItem(
        icon: Padding(
          key: Key('bottom_library_icon'),
          padding: EdgeInsets.only(bottom: 3),
          child: Icon(
            Icons.video_library_outlined,
          ),
        ),
        label: 'Coming Soon'),
    const BottomNavigationBarItem(
        icon: Padding(
          key: Key('bottom_highlight_icon'),
          padding: EdgeInsets.only(bottom: 3),
          child: Icon(
            Icons.tag_faces_outlined,
          ),
        ),
        label: 'Highlihts'),
    const BottomNavigationBarItem(
        icon: Padding(
          key: Key('bottom_search_icon'),
          padding: EdgeInsets.only(bottom: 3),
          child: Icon(
            Icons.search,
          ),
        ),
        label: 'Search'),
    const BottomNavigationBarItem(
        icon: Padding(
          key: Key('bottom_download_icon'),
          padding: EdgeInsets.only(bottom: 3),
          child: Icon(
            Icons.download_sharp,
          ),
        ),
        label: 'Downloads'),
  ];
  List<Widget> pages = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}
