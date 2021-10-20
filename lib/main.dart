import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/routes/pages.dart';
import 'package:untitled/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

// Main app 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
  //Get Material App to use get navigation
     GetMaterialApp(
      title: 'Login App',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.login,  // Initial page to show on startup
      getPages: pages,   // List of all available Pages
    );

}
