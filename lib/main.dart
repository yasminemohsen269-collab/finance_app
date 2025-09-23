import 'package:financeapp/utils/app_color.dart';
import 'package:financeapp/utils/app_theme.dart';
import 'package:financeapp/views/on_boarding_view.dart';
import 'package:financeapp/widgets/custom_text_field.dart';
import 'package:financeapp/widgets/primary_button.dart';
import 'package:financeapp/widgets/primary_outlined_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: AppTheme.lightTheme,
          home: child,
        );
      },
      child: OnBoardingView(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("finance")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PrimaryButton(
              text: "Login",
              fontSize: 15.sp,
              width: 330.w,
              height: 5.h,
              onPressed: () {},
            ),
            SizedBox(height: 20),

            PrimaryOutlinedButtonWidget(
              text: "Login",
              fontSize: 15.sp,
              width: 330.w,
              height: 5.h,
              onPressed: () {},
            ),
            SizedBox(height: 20),
            CustomTextField(hintText: "Enter your email"),
            SizedBox(height: 20),
            CustomTextField(
              hintText: "Password",
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isPassword = !isPassword;
                  });
                },
                icon: Icon(
                  isPassword
                      ? Icons.remove_red_eye_outlined
                      : Icons.visibility_off_outlined,
                  color: Color(0xff6A707C),
                ),
              ),
              isPassword: isPassword,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
