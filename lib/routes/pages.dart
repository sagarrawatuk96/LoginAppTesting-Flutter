import 'package:get/get.dart';
import 'package:untitled/home/view/home.dart';
import 'package:untitled/login/view/login.dart';
import 'package:untitled/navigation/view/navigation.dart';
import 'package:untitled/routes/routes.dart';

List<GetPage<dynamic>> pages = [
  GetPage(name: Routes.login, page: () => LoginPage()),
  GetPage(name: Routes.home, page: () =>  HomePage()),
  GetPage(name: Routes.navigation, page: () =>  BottomNavigation()),

];