import 'package:financeapp/routing/app_routes.dart';
import 'package:financeapp/utils/app_color.dart';
import 'package:financeapp/utils/app_styles.dart';
import 'package:financeapp/widgets/back_button_widget.dart';
import 'package:financeapp/widgets/custom_or_login_widget.dart';
import 'package:financeapp/widgets/custom_social_login_icon.dart';
import 'package:financeapp/widgets/custom_text_field.dart';
import 'package:financeapp/widgets/primary_button.dart';
import 'package:financeapp/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HightSpace(height: 12),

              const BackButtonWidget(),
              const HightSpace(height: 28),

              SizedBox(
                width: 280.w,
                child: Text(
                  "Welcome back! Again!",
                  style: AppStyles.praimaryHeadLineStyle,
                ),
              ),
              const HightSpace(height: 32),
              CustomTextField(hintText: "Enter Your email"),
              const HightSpace(height: 15),

              CustomTextField(
                hintText: "Enter Your password",
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: AppColor.greyColor,
                  size: 20.sp,
                ),
              ),
              const HightSpace(height: 15),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "Forgot Password?",

                  style: AppStyles.bkack15boldStyle.copyWith(
                    color: AppColor.darkGrey,
                    fontSize: 14,
                  ),
                ),
              ),
              const HightSpace(height: 30),
              PrimaryButton(
                width: 331.w,
                height: 56.h,
                onPressed: () {
                  GoRouter.of(context).pushNamed(AppRoutes.registerView);
                },
                text: "Login",
              ),
              const HightSpace(height: 35),
              const CustomOrLoginWidget(),
              const HightSpace(height: 22),
              const CustomSocialLoginIcon(),
              const HightSpace(height: 155),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Don’t have an account?",
                    style: AppStyles.bkack15boldStyle.copyWith(
                      color: AppColor.praimaryColor,
                    ),
                    children: [
                      TextSpan(
                        text: " Register Now",
                        style: AppStyles.bkack15boldStyle.copyWith(
                          color: AppColor.blackBlue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
