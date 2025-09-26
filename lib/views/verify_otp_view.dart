import 'package:financeapp/routing/app_routes.dart';
import 'package:financeapp/utils/app_color.dart';
import 'package:financeapp/utils/app_styles.dart';
import 'package:financeapp/widgets/back_button_widget.dart';
import 'package:financeapp/widgets/primary_button.dart';
import 'package:financeapp/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyOtpView extends StatefulWidget {
  const VerifyOtpView({super.key});

  @override
  State<VerifyOtpView> createState() => _VerifyOtpViewState();
}

class _VerifyOtpViewState extends State<VerifyOtpView> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController PinCodeController;

  @override
  void initState() {
    super.initState();
    PinCodeController = TextEditingController();
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
                  const BackButtonWidget(),
                  const HightSpace(height: 28),
                  SizedBox(
                    width: 216.w,
                    child: Text(
                      "OTP Verification",
                      style: AppStyles.praimaryHeadLineStyle,
                    ),
                  ),
                  const HightSpace(height: 10),
                  SizedBox(
                    width: 331.w,
                    child: Text(
                      "Enter the verification code we just sent on your email address.",
                      style: AppStyles.subTitleStyles,
                    ),
                  ),

                  const HightSpace(height: 32),
                  PinCodeTextField(
                    appContext: context,
                    length: 4,
                    obscureText: false,
                    controller: PinCodeController,
                    enableActiveFill: true,
                    keyboardType: TextInputType.number,
                    textStyle: AppStyles.praimaryHeadLineStyle.copyWith(
                      fontSize: 22.sp,
                    ),
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(8.r),
                      fieldHeight: 60.h,
                      fieldWidth: 70.w,
                      selectedColor: AppColor.praimaryColor,
                      selectedFillColor: AppColor.whiteColor,
                      activeColor: AppColor.praimaryColor,
                      activeFillColor: Colors.white,
                      inactiveColor: AppColor.greyColor,
                      inactiveFillColor: AppColor.greyColor.withOpacity(0.1),
                      borderWidth: 1,
                    ),
                    onCompleted: (value) {
                      GoRouter.of(context).push(AppRoutes.forgetPasswordView);
                    },
                  ),
                  const HightSpace(height: 30),
                  PrimaryButton(
                    width: 331.w,
                    height: 56.h,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        GoRouter.of(
                          context,
                        ).push(AppRoutes.CreateNewPasswordView);
                      }
                    },
                    text: "Verify",
                  ),

                  const HightSpace(height: 340),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Didn’t received code?",
                        style: AppStyles.bkack15boldStyle.copyWith(
                          color: AppColor.praimaryColor,
                        ),
                        children: [
                          TextSpan(
                            text: " Resend",
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
