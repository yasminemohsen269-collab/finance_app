import 'package:financeapp/core/utils/app_assets.dart';
import 'package:financeapp/features/auth/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CustomSocialLoginIcon extends StatelessWidget {
  const CustomSocialLoginIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(onTap: () {}, iconPath: AppAssets.facebookSVGIcon),
        CustomIconButton(onTap: () {}, iconPath: AppAssets.googleSVGIcon),
        CustomIconButton(onTap: () {}, iconPath: AppAssets.appleSVGIcon),
      ],
    );
  }
}
