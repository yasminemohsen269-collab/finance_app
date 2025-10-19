import 'package:financeapp/core/routing/app_routes.dart';
import 'package:financeapp/core/utils/app_styles.dart';
import 'package:financeapp/core/widgets/primary_button.dart';
import 'package:financeapp/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PasswordChangesView extends StatefulWidget {
  const PasswordChangesView({super.key});

  @override
  State<PasswordChangesView> createState() => _PasswordChangesViewState();
}

class _PasswordChangesViewState extends State<PasswordChangesView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(22),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const HightSpace(height: 248),
                Image.asset("assets/images/Successmark.png"),
                const HightSpace(height: 35),
                Text(
                  "Password Changed!",
                  style: AppStyles.praimaryHeadLineStyle,
                ),
                const HightSpace(height: 10),
                SizedBox(
                  width: 331.w,

                  child: Text(
                    "Your password has been changed successfully.",
                    style: AppStyles.subTitleStyles,
                  ),
                ),
                const HightSpace(height: 40),
                PrimaryButton(
                  width: 331.w,
                  height: 56.h,
                  onPressed: () {
                    GoRouter.of(context).push(AppRoutes.mainView);
                  },
                  text: "Back to Login",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
