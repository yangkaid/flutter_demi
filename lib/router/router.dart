import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../main.dart';


// flutter pub run build_runner build
part 'router.g.dart';

@TypedGoRoute<NewPageRoute>(path: '/new-page')
@immutable
class NewPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const NewPage();
  }
}
