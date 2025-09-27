import 'package:financeapp/utils/app_assets.dart';
import 'package:financeapp/utils/app_color.dart';
import 'package:financeapp/widgets/custom_home_view_item.dart';
import 'package:financeapp/widgets/custom_name_of_view.dart';
import 'package:financeapp/widgets/spacing_widgets.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class StatisticView extends StatefulWidget {
  const StatisticView({super.key});

  @override
  State<StatisticView> createState() => _StatisticViewState();
}

class _StatisticViewState extends State<StatisticView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        children: [
          HightSpace(height: 12.h),
          CustomNameOfView(nameText: "Reload"),
          HightSpace(height: 30.h),
          SizedBox(
            width: 327.w,
            height: 236.h,
            child: BarChart(
              BarChartData(
                titlesData: titlesData,
                borderData: borderData,
                barGroups: barGroups,
                gridData: const FlGridData(show: true),
                alignment: BarChartAlignment.spaceAround,
                maxY: 20,
              ),
            ),
          ),
          HightSpace(height: 16.h),

          Expanded(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16.sp,
                crossAxisSpacing: 16.sp,
              ),
              children: [
                CustomHomeViewItem(
                  icon: SvgPicture.asset(AppAssets.downloadIcon),
                  title: "15000 EG",
                  subTitle: "Income",
                ),
                CustomHomeViewItem(
                  icon: SvgPicture.asset(AppAssets.uploadIcon),
                  title: "35000 EG",
                  subTitle: "Outcome",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getTitles(double value, TitleMeta meta) {
    final style = TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Jan';
        break;
      case 1:
        text = 'Feb';
        break;
      case 2:
        text = 'Mar';
        break;
      case 3:
        text = 'Apr';
        break;
      case 4:
        text = 'May';
        break;
      case 5:
        text = 'St';
        break;
      case 6:
        text = 'Sn';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      meta: meta,
      space: 4,
      child: Text(text, style: style),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
    show: true,
    bottomTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 30,
        getTitlesWidget: getTitles,
      ),
    ),
    leftTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        interval: 2,
        getTitlesWidget: (value, meta) => Text(
          "${value.toInt()}k",
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
      ),
    ),
    topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
    rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
  );

  FlBorderData get borderData => FlBorderData(show: false);

  List<BarChartGroupData> get barGroups => [
    for (int i = 0; i < 5; i++)
      BarChartGroupData(
        x: i,
        barRods: [
          BarChartRodData(
            toY: 12,
            color: AppColor.praimaryColor,
            width: 12,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.r),
              topRight: Radius.circular(8.r),
            ),
          ),
          BarChartRodData(
            toY: 8,
            color: Color(0xff303A6E),
            width: 12,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.r),
              topRight: Radius.circular(8.r),
            ),
          ),
        ],
      ),
  ];
}
