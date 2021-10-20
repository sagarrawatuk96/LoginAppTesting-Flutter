import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>Scaffold(
    appBar: AppBar(
      title: const Text(
        'Welcome'
      ),
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       const Center(
          child: Text('Hello User',style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600
          ),),
        )
      ],
    ),
  );
}
