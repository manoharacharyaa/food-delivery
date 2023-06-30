import 'package:flutter/material.dart';
import 'package:food_delivery/common/colors.dart';
import 'package:food_delivery/view/home/home_view.dart';
import 'package:food_delivery/view/menu/menu_view.dart';
import 'package:food_delivery/view/offer/offer_view.dart';
import 'package:food_delivery/widget/tab_button.dart';

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
      backgroundColor: const Color(0XFFF5F5F5),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: SizedBox(
        width: 60,
        height: 60,
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (selectTab != 2) {
                selectTab = 2;
                selectPageView = const HomeView();
              }
              if (mounted) {
                setState(() {});
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
      ),
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black12,
        elevation: 1,
        notchMargin: 12,
        height: media.height * 0.10,
        shape: CircularNotchedRectangle(),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabButton(
                onTap: () {
                  if (selectTab != 0) {
                    selectTab = 0;
                    print("selectedtab ${selectTab}");
                    selectPageView = MenuView();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
                title: "Menu",
                isSelected: selectTab == 0,
                icon: "assets/img/tab_menu.png",
              ),
              TabButton(
                onTap: () {
                  if (selectTab != 1) {
                    selectTab = 1;
                    print("selectedtab ${selectTab}");
                    selectPageView = OfferView();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
                title: "Offer",
                isSelected: selectTab == 1,
                icon: "assets/img/tab_offer.png",
              ),
              SizedBox(width: 40, height: 40),
              TabButton(
                onTap: () {
                  if (selectTab != 3) {
                    selectTab = 3;
                    print("selectedtab ${selectTab}");
                    selectPageView = Container();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
                title: "Profile",
                isSelected: selectTab == 3,
                icon: "assets/img/tab_profile.png",
              ),
              TabButton(
                onTap: () {
                  if (selectTab != 4) {
                    selectTab = 4;
                    print("selectedtab ${selectTab}");
                    selectPageView = Container();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
                title: "More",
                isSelected: selectTab == 4,
                icon: "assets/img/tab_more.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
