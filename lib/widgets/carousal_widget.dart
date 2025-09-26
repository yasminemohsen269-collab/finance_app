import 'package:carousel_slider/carousel_slider.dart';
import 'package:financeapp/widgets/card_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarousalWidget extends StatefulWidget {
  const CarousalWidget({super.key});

  @override
  State<CarousalWidget> createState() => _CarousalWidgetState();
}

class _CarousalWidgetState extends State<CarousalWidget> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 263.h,
        padEnds: false,
        viewportFraction: 0.7,
        enlargeCenterPage: true,
        enlargeFactor: 0.2,
      ),
      items: [CardItemWidget()],
    );
  }
}
