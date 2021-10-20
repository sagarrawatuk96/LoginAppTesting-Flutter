import 'package:get/get.dart';
import 'package:untitled/home/view/profile.dart';
import 'package:untitled/login/view/login.dart';
import 'package:untitled/routes/routes.dart';

List<GetPage<dynamic>> pages = [
  GetPage(name: Routes.login, page: () => LoginPage()),
  GetPage(name: Routes.home, page: () => const HomePage()),
];