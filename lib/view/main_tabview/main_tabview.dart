import 'package:flutter/material.dart';
import 'package:food_delivery/common/colors.dart';
import 'package:food_delivery/view/home/home_view.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selectTab = 2;
  PageStorageBucket storageBucket = PageStorageBucket();
  Widget selectPageView = const HomeView();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: PageStorage(bucket: storageBucket, child: selectPageView),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (selectTab != 2) {
              selectTab = 2;
              selectPageView = const HomeView();
            }
          });
        },
        shape: const CircleBorder(),
        backgroundColor: selectTab == 2 ? TColor.primary : TColor.placeholder,
        child: Image.asset(
          "assets/img/tab_home.png",
          width: 30,
          height: 30,
        ),
      ),
    );
  }
}
