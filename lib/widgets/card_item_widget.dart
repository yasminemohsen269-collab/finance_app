import 'package:financeapp/utils/app_assets.dart';
import 'package:financeapp/utils/app_color.dart';
import 'package:financeapp/utils/app_styles.dart';
import 'package:financeapp/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardItemWidget extends StatelessWidget {
  const CardItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 263.h,
          width: 207.w,
          decoration: BoxDecoration(
            color: AppColor.praimaryColor,
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: Image.asset(
            AppAssets.layer2,
            color: Colors.white,
            width: 207.w,
            height: 200.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: Image.asset(
            AppAssets.layer1,
            color: Colors.white,
            width: 207.w,
            height: 130.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 24.w,
          top: 24.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "X_Card",
                style: AppStyles.bkack15boldStyle.copyWith(color: Colors.white),
              ),
              HightSpace(height: 57),
              Text(
                "Balance",
                style: AppStyles.bkack15boldStyle.copyWith(color: Colors.white),
              ),
              Text(
                "23000 EG",
                style: AppStyles.bkack15boldStyle.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 26.h,
          right: 24.w,
          child: Text(
            "12/24",
            style: AppStyles.bkack15boldStyle.copyWith(color: Colors.white),
          ),
        ),
        Positioned(
          bottom: 26.h,
          left: 24.w,
          child: Text(
            "****  3434",
            style: AppStyles.bkack15boldStyle.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
