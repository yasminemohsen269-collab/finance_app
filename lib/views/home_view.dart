import 'package:financeapp/widgets/carousal_widget.dart';
import 'package:financeapp/widgets/spacing_widgets.dart';
import 'package:financeapp/widgets/top_profile_notification_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          TopProfileNotificationWidget(),
          HightSpace(height: 18),
          CarousalWidget(),
        ],
      ),
    );
  }
}
