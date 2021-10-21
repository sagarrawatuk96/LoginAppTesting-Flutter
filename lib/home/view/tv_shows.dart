import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/home/controller/home_controller.dart';

class TvShows extends StatelessWidget {
  TvShows({Key? key}) : super(key: key);
  final HomeController homeViewController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    width: Get.size.width,
                    height: Get.size.height * 0.7,
                    child: Image.asset(
                      'assets/images/house.jpeg',
                      height: Get.size.height * 0.7,
                      width: Get.size.width,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Colors.transparent,
                      Colors.black,
                    ], begin: Alignment.center, end: Alignment.bottomCenter)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Colors.black.withOpacity(0.7),
                      Colors.transparent,
                    ], begin: Alignment.topCenter, end: Alignment.center)),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: Get.size.height * 0.7,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Psychological',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 1.1),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Icon(
                              Icons.circle,
                              size: 5,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            'Investigative',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 1.1),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Icon(
                              Icons.circle,
                              size: 5,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            'Dark',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 1.1),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.add,
                                size: 25,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'My List',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                          ElevatedButton.icon(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  fixedSize: const Size(105, 28),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2))),
                              icon: const Icon(
                                Icons.play_arrow,
                                color: Colors.black,
                                size: 37,
                              ),
                              label: const Text(
                                'Play',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                          Column(
                            children: [
                              const Icon(
                                Icons.info_outline,
                                size: 25,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Info',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Top 10 in India Today',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  itemCount: homeViewController.images.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Stack(
                    key: Key('top_$index'),
                    children: [
                      Container(
                        padding: const EdgeInsetsDirectional.only(start: 40),
                        child: Image.asset(homeViewController.images[index]),
                      ),
                      PositionedDirectional(
                        bottom: -28,
                        start: -10,
                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(
                              fontSize: 120,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                    // bottomLeft
                                    offset: Offset(-1.5, -1.5),
                                    color: Colors.white),
                                Shadow(
                                    // bottomRight
                                    offset: Offset(1.5, -1.5),
                                    color: Colors.white),
                                Shadow(
                                    // topRight
                                    offset: Offset(1.5, 1.5),
                                    color: Colors.white),
                                Shadow(
                                    // topLeft
                                    offset: Offset(-1.5, 1.5),
                                    color: Colors.white),
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
