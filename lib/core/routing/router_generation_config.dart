import 'package:financeapp/core/routing/app_routes.dart';
import 'package:financeapp/views/create_new_password_view.dart';
import 'package:financeapp/features/forget_password_view/forget_Password_View.dart';
import 'package:financeapp/features/auth/login_view.dart';
import 'package:financeapp/features/main_screen/main_view.dart';
import 'package:financeapp/features/on_bourding_screen/on_boarding_view.dart';
import 'package:financeapp/views/password_changes_view.dart';
import 'package:financeapp/features/register_view/register_view.dart';
import 'package:financeapp/features/verify_otp/verify_otp_view.dart';
import 'package:financeapp/views/provider/auth_provider.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

class RouterGenerationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onBoardingView,
    routes: [
      GoRoute(
        path: AppRoutes.onBoardingView,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: AppRoutes.loginView,
        builder: (context, state) => ChangeNotifierProvider(
          create: (context) => AuthProvider(),
          child: const LoginView(),
        ),
      ),
      GoRoute(
        path: AppRoutes.registerView,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        //    name: AppRoutes.registerView,
        path: AppRoutes.forgetPasswordView,
        builder: (context, state) => const ForgetPasswordView(),
      ),
      GoRoute(
        //    name: AppRoutes.registerView,
        path: AppRoutes.CreateNewPasswordView,
        builder: (context, state) => const CreateNewPasswordView(),
      ),
      GoRoute(
        path: AppRoutes.passwordChangesView,
        builder: (context, state) => const PasswordChangesView(),
      ),
      GoRoute(
        path: AppRoutes.verifyOtpView,
        builder: (context, state) => const VerifyOtpView(),
      ),
      GoRoute(
        //    name: AppRoutes.registerView,
        path: AppRoutes.mainView,
        builder: (context, state) => const MainView(),
      ),
    ],
  );
}
