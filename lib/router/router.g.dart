// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $newPageRoute,
      $myHomePageRoute,
      $formDemoRoute,
    ];

RouteBase get $newPageRoute => GoRouteData.$route(
      path: '/new-page',
      name: 'NewPage',
      factory: $NewPageRouteExtension._fromState,
    );

extension $NewPageRouteExtension on NewPageRoute {
  static NewPageRoute _fromState(GoRouterState state) => NewPageRoute();

  String get location => GoRouteData.$location(
        '/new-page',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

RouteBase get $myHomePageRoute => GoRouteData.$route(
      path: '/',
      name: 'Home',
      factory: $MyHomePageRouteExtension._fromState,
    );

extension $MyHomePageRouteExtension on MyHomePageRoute {
  static MyHomePageRoute _fromState(GoRouterState state) => MyHomePageRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

RouteBase get $formDemoRoute => GoRouteData.$route(
      path: '/form-demo',
      factory: $FormDemoRouteExtension._fromState,
    );

extension $FormDemoRouteExtension on FormDemoRoute {
  static FormDemoRoute _fromState(GoRouterState state) => FormDemoRoute();

  String get location => GoRouteData.$location(
        '/form-demo',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}
