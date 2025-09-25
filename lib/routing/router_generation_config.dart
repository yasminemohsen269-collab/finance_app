import 'package:financeapp/routing/app_routes.dart';
import 'package:financeapp/views/forget_Password_View.dart';
import 'package:financeapp/views/login_view.dart';
import 'package:financeapp/views/on_boarding_view.dart';
import 'package:financeapp/views/register_view.dart';
import 'package:go_router/go_router.dart';

class RouterGenerationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onBoardingView,
    routes: [
      GoRoute(
        //  name: AppRoutes.onBoardingView,
        path: AppRoutes.onBoardingView,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        //   name: AppRoutes.loginView,
        path: AppRoutes.loginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        //    name: AppRoutes.registerView,
        path: AppRoutes.registerView,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        //    name: AppRoutes.registerView,
        path: AppRoutes.forgetPasswordView,
        builder: (context, state) => const ForgetPasswordView(),
      ),
    ],
  );
}
