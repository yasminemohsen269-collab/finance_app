import 'package:financeapp/utils/app_styles.dart';
import 'package:financeapp/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOrLoginWidget extends StatelessWidget {
  const CustomOrLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 105.w, child: Divider()),
        const WidthSpace(width: 12),
        Text(
          "Or Login with",
          style: AppStyles.bkack15boldStyle.copyWith(color: Color(0xff6A707C)),
        ),
        const WidthSpace(width: 12),
        SizedBox(width: 105.w, child: Divider()),
      ],
    );
  }
}
