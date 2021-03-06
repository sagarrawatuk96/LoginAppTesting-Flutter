import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/constants/validations.dart';
import 'package:untitled/login/controller/login_controller.dart';
import 'package:untitled/routes/routes.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final LoginController homeViewController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            children: [
              Expanded(
                child: Obx(
                  () => ListView(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 70,
                        ),
                        child: Image.asset(
                          'assets/images/netflix_logo.png',
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Email Address',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        key: const Key('email-field-key'),
                        style: TextStyle(
                          color: Colors.grey.shade300,
                        ),
                        controller: homeViewController.emailController,
                        validator: (text) => emailValidation(
                            text!), // Validates the email address
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            fillColor: Colors.black54,
                            filled: true,
                            hintText: 'Enter email',
                            hintStyle: TextStyle(
                              color: Colors.grey.shade300,
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Password',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        key: const Key('password-field-key'),
                        style: TextStyle(
                          color: Colors.grey.shade300,
                        ),
                        scrollPadding:const EdgeInsets.only(bottom: 60),
                        controller: homeViewController.passwordController,
                        obscureText: true,
                        onChanged: (text) {
                          if (text.isNotEmpty) {
                            homeViewController.showPasswordValidations.value =
                                true;
                          }
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            fillColor: Colors.black54,
                            filled: true,
                            hintText: 'Enter password',
                            hintStyle: TextStyle(
                              color: Colors.grey.shade300,
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            'Forgot Password?',
                            style: TextStyle(color: Color(0xffE50914)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      homeViewController.showPasswordValidations
                              .value //shows password validations on interaction
                          ? Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  homeViewController.passwordCheck1.value
                                      ? const SizedBox.shrink()
                                      : Row(
                                          children: [
                                            const Text(
                                              'More than 6 Characters',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Icon(Icons.info_outline,
                                                size: 20, color: Colors.red),
                                          ],
                                        ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  homeViewController.passwordCheck2.value
                                      ? const SizedBox.shrink()
                                      : Row(
                                          children: [
                                            const Text(
                                              'At least One Digit',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Icon(Icons.info_outline,
                                                size: 20, color: Colors.red),
                                          ],
                                        ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  homeViewController.passwordCheck3.value
                                      ? const SizedBox.shrink()
                                      : Row(
                                          children: [
                                            const Text(
                                              'One special Character',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Icon(Icons.info_outline,
                                                size: 20, color: Colors.red),
                                          ],
                                        ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  homeViewController.passwordCheck4.value
                                      ? const SizedBox.shrink()
                                      : Row(
                                          children: [
                                            const Text(
                                              'One uppercase Character',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Icon(Icons.info_outline,
                                                size: 20, color: Colors.red),
                                          ],
                                        ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ))
                          : const SizedBox.shrink()
                    ],
                  ),
                ),
              ),
              Obx(
                () => ElevatedButton(
                  key: const Key('login-button-key'),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(Get.size.width,
                          50), // put the width and height you want
                      primary: const Color(0xffE50914)),
                  onPressed: homeViewController.isEnabled.value
                      ? () => Get.toNamed(Routes.navigation)
                      : null,
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
