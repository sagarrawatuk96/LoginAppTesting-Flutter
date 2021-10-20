import 'package:get/get.dart';
import 'package:untitled/home/view/home.dart';
import 'package:untitled/profile/view/profile.dart';
import 'package:untitled/routes/routes.dart';

List<GetPage<dynamic>> pages = [
  GetPage(name: Routes.login, page: () => HomePage()),
  GetPage(name: Routes.profile, page: () => const ProfilePage()),
];