import 'package:financeapp/core/routing/app_routes.dart';
import 'package:financeapp/core/utils/app_assets.dart';
import 'package:financeapp/core/utils/app_styles.dart';
import 'package:financeapp/core/widgets/primary_button.dart';
import 'package:financeapp/core/widgets/primary_outlined_button_widget.dart';
import 'package:financeapp/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              AppAssets.visa,
              width: double.infinity,
              height: 438.h,
              fit: BoxFit.fitWidth,
            ),
            const HightSpace(height: 50),
            PrimaryButton(
              width: 331.w,
              height: 56.h,
              onPressed: () {
                GoRouter.of(context).push(AppRoutes.loginView);
              },
              text: "Login",
            ),
            const HightSpace(height: 15),

            PrimaryOutlinedButtonWidget(
              width: 331.w,
              height: 56.h,
              onPressed: () {},
              text: "Register",
            ),
            const HightSpace(height: 20),
            Text(
              "Continue as a list",
              style: AppStyles.bkack15boldStyle.copyWith(
                fontSize: 15,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
