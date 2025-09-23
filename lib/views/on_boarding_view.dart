import 'package:financeapp/utils/app_assets.dart';
import 'package:financeapp/utils/app_styles.dart';
import 'package:financeapp/widgets/primary_button.dart';
import 'package:financeapp/widgets/primary_outlined_button_widget.dart';
import 'package:financeapp/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            AppAssets.logo,
            width: double.infinity,
            height: 570.h,
            fit: BoxFit.fitWidth,
          ),
          const HightSpace(height: 21),
          PrimaryButton(
            width: 331.w,
            height: 56.h,
            onPressed: () {},
            text: "Login",
          ),
          const HightSpace(height: 15),

          PrimaryOutlinedButtonWidget(
            width: 331.w,
            height: 56.h,
            onPressed: () {},
            text: "Register",
          ),
          const HightSpace(height: 46),
          Text("Continue as a list", style: AppStyles.bkack15boldStyle),
        ],
      ),
    );
  }
}
