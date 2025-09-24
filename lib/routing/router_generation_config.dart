import 'package:financeapp/routing/app_routes.dart';
import 'package:financeapp/views/login_view.dart';
import 'package:financeapp/views/on_boarding_view.dart';
import 'package:go_router/go_router.dart';

class RouterGenerationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onBoardingView,
    routes: [
      GoRoute(
        name: AppRoutes.onBoardingView,
        path: AppRoutes.onBoardingView,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        name: AppRoutes.loginView,
        path: AppRoutes.loginView,
        builder: (context, state) => const LoginView(),
      ),
    ],
  );
}
