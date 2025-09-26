import 'package:financeapp/utils/app_assets.dart';
import 'package:financeapp/utils/app_color.dart';
import 'package:financeapp/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentInex = 0;
  List<Widget> screens = [
    HomeView(),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.pinkAccent,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.purple,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.brown,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[currentInex],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 1,
          selectedItemColor: AppColor.praimaryColor,
          unselectedItemColor: AppColor.greyColor,

          currentIndex: currentInex,
          onTap: (value) {
            setState(() {
              currentInex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAssets.homeIcon),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAssets.chartIcon),
              label: "Statistic",
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 48.w,
                height: 48.h,
                decoration: BoxDecoration(
                  color: AppColor.praimaryColor,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Icon(Icons.add, color: Colors.white, size: 24.sp),
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: "Card",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAssets.profileIcon),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
