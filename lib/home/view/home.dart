import 'package:flutter/material.dart';
import 'package:untitled/home/view/tv_shows.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Widget> tabs = [
    const Tab(
      key: Key('tab_1'),
      text: 'Tv Shows',
    ),
    const Tab(
      key: Key('tab_2'),
      text: 'Movies',
    ),
    const Tab(
      key: Key('tab_3'),
      text: 'Categories',
    )
  ];

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          backgroundColor: Colors.black,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                'assets/images/netflix.png',
                height: 40,
                width: 40,
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.cast, size: 30),
                onPressed: () {},
              ),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 20),
                child: Image.asset(
                  'assets/images/user.png',
                  height: 28,
                  width: 28,
                ),
              )
            ],
            bottom: PreferredSize(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TabBar(
                    indicatorColor: Colors.red,
                    indicatorPadding:
                        const EdgeInsets.symmetric(horizontal: 40),
                    tabs: tabs,
                    labelStyle: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                preferredSize: const Size.fromHeight(40)),
          ),
          body: TabBarView(
            children: [TvShows(), TvShows(), TvShows()],
          ),
        ),
      );
}
