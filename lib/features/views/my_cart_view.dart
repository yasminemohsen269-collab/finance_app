import 'package:financeapp/features/home_page/widgets/card_item_widget.dart';
import 'package:financeapp/core/widgets/custom_name_of_view.dart';
import 'package:financeapp/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCartView extends StatefulWidget {
  const MyCartView({super.key});

  @override
  State<MyCartView> createState() => _MyCartViewState();
}

class _MyCartViewState extends State<MyCartView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        children: [
          CustomNameOfView(nameText: "All Cards"),
          const HightSpace(height: 24),
          CardItemWidget(hight: 180.h, width: 327.w, visaText: "Visa"),
          const HightSpace(height: 24),
          CardItemWidget(hight: 180.h, width: 327.w, visaText: "Visa"),
        ],
      ),
    );
  }
}
