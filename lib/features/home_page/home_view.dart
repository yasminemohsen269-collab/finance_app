import 'package:financeapp/core/utils/app_assets.dart';
import 'package:financeapp/features/home_page/widgets/carousal_widget.dart';
import 'package:financeapp/features/home_page/widgets/custom_home_view_item.dart';
import 'package:financeapp/core/widgets/spacing_widgets.dart';
import 'package:financeapp/features/home_page/widgets/top_profile_notification_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        children: [
          TopProfileNotificationWidget(),
          const HightSpace(height: 18),
          CarousalWidget(),
          const HightSpace(height: 24),
          Expanded(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16.sp,
                crossAxisSpacing: 16.sp,
              ),
              children: [
                CustomHomeViewItem(
                  icon: SvgPicture.asset(AppAssets.sendIcon),
                  title: "Send money",
                  subTitle: "Take acc to acc",
                ),
                CustomHomeViewItem(
                  icon: SvgPicture.asset(AppAssets.walletIcon),
                  title: "Pay the bill",
                  subTitle: "Lorem ipsum",
                ),
                CustomHomeViewItem(
                  icon: SvgPicture.asset(AppAssets.sendIcon),
                  title: "Request",
                  subTitle: "Lorem ipsum",
                ),
                CustomHomeViewItem(
                  icon: SvgPicture.asset(AppAssets.friendsIcon),
                  title: "Contact",
                  subTitle: "Lorem ipsum",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
