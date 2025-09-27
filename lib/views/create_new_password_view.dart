import 'package:financeapp/routing/app_routes.dart';
import 'package:financeapp/utils/app_styles.dart';
import 'package:financeapp/widgets/back_button_widget.dart';

import 'package:financeapp/widgets/custom_text_field.dart';
import 'package:financeapp/widgets/primary_button.dart';
import 'package:financeapp/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CreateNewPasswordView extends StatefulWidget {
  const CreateNewPasswordView({super.key});

  @override
  State<CreateNewPasswordView> createState() => _CreateNewPasswordViewState();
}

class _CreateNewPasswordViewState extends State<CreateNewPasswordView> {
  final formKey = GlobalKey<FormState>();

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();

    passwordController = TextEditingController();
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
                    width: 292.w,

                    child: Text(
                      "Create new password",
                      style: AppStyles.praimaryHeadLineStyle,
                    ),
                  ),
                  const HightSpace(height: 10),
                  SizedBox(
                    width: 331.w,

                    child: Text(
                      "Your new password must be unique from those previously used.",
                      style: AppStyles.subTitleStyles,
                    ),
                  ),

                  const HightSpace(height: 32),
                  CustomTextField(
                    controller: passwordController,
                    hintText: "Enter Your password",
                    isPassword: true,

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password cannot be empty";
                      } else if (value.length < 6) {
                        return "Password must be at least 6 characters";
                      }
                      return null;
                    },
                  ),
                  const HightSpace(height: 15),
                  CustomTextField(
                    hintText: "Confirm Password",
                    isPassword: true,
                  ),
                  const HightSpace(height: 30),
                  PrimaryButton(
                    width: 331.w,
                    height: 56.h,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        GoRouter.of(
                          context,
                        ).push(AppRoutes.passwordChangesView);
                      }
                    },
                    text: "Reset Password",
                  ),

                  const HightSpace(height: 361),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
