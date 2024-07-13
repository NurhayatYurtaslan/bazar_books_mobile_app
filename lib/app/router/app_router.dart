import 'package:auto_route/auto_route.dart';
import 'package:bazar_books_mobile_app/app/views/view_onboarding/onboarding_view_model.dart';
import 'package:bazar_books_mobile_app/app/views/view_splash/splash_view.dart';

part "app_router.gr.dart";

@AutoRouterConfig(
  replaceInRouteName: 'View',
)
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashViewRoute.page),
        AutoRoute(initial: true, page: OnboardingViewRoute.page),
      ];
}
