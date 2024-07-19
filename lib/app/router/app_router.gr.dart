// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    OnboardingViewRoute.name: (routeData) {
      final args = routeData.argsAs<OnboardingViewRouteArgs>(
          orElse: () => const OnboardingViewRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OnboardingView(key: args.key),
      );
    },
    SigninViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SigninView(),
      );
    },
    SplashViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashView(),
      );
    },
  };
}

/// generated route for
/// [OnboardingView]
class OnboardingViewRoute extends PageRouteInfo<OnboardingViewRouteArgs> {
  OnboardingViewRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          OnboardingViewRoute.name,
          args: OnboardingViewRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OnboardingViewRoute';

  static const PageInfo<OnboardingViewRouteArgs> page =
      PageInfo<OnboardingViewRouteArgs>(name);
}

class OnboardingViewRouteArgs {
  const OnboardingViewRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'OnboardingViewRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SigninView]
class SigninViewRoute extends PageRouteInfo<void> {
  const SigninViewRoute({List<PageRouteInfo>? children})
      : super(
          SigninViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'SigninViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashView]
class SplashViewRoute extends PageRouteInfo<void> {
  const SplashViewRoute({List<PageRouteInfo>? children})
      : super(
          SplashViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
