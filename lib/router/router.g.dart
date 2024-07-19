// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $newPageRoute,
    ];

RouteBase get $newPageRoute => GoRouteData.$route(
      path: '/new-page',
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
