import 'package:financeapp/routing/app_routes.dart';
import 'package:financeapp/utils/app_color.dart';
import 'package:financeapp/utils/app_styles.dart';
import 'package:financeapp/widgets/back_button_widget.dart';

import 'package:financeapp/widgets/custom_text_field.dart';
import 'package:financeapp/widgets/primary_button.dart';
import 'package:financeapp/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController emailController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HightSpace(height: 12),

                  const BackButtonWidget(icon: Icons.arrow_back),
                  const HightSpace(height: 28),

                  SizedBox(
                    width: 234.w,

                    child: Text(
                      "Forgot Password?",
                      style: AppStyles.praimaryHeadLineStyle,
                    ),
                  ),
                  const HightSpace(height: 10),
                  SizedBox(
                    width: 331.w,

                    child: Text(
                      "Don't worry! It occurs. Please enter the email address linked with your account.",
                      style: AppStyles.subTitleStyles,
                    ),
                  ),

                  const HightSpace(height: 32),
                  CustomTextField(
                    controller: emailController,
                    hintText: "Enter Your email",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your email";
                      }
                    },
                  ),
                  const HightSpace(height: 30),
                  PrimaryButton(
                    width: 331.w,
                    height: 56.h,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        GoRouter.of(context).push(AppRoutes.verifyOtpView);
                      }
                    },
                    text: "Send code",
                  ),

                  const HightSpace(height: 361),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Remember Password? ",
                        style: AppStyles.bkack15boldStyle.copyWith(
                          color: AppColor.praimaryColor,
                        ),
                        children: [
                          TextSpan(
                            text: "Login",
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
        ),
      ),
    );
  }
}
