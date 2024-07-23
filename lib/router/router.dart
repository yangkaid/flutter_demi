import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import 'package:flutter_demo/views/home.dart';


// flutter pub run build_runner build
part 'router.g.dart';

@TypedGoRoute<NewPageRoute>(path: '/new-page', name: 'NewPage')
@immutable
class NewPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const NewPage();
  }
}

@TypedGoRoute<MyHomePageRoute>(path: '/', name: 'Home')
@immutable
class MyHomePageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    // TODO: implement build
    var countStr = state.queryParams['count'];
    int count = int.tryParse(countStr ?? '0') ?? 0;
    return MyHomePage(title: '首页', count: count);
  }
}

@TypedGoRoute<FormDemoRoute>(path: '/form-demo', name: 'FormDemo')
@immutable
class FormDemoRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    // TODO: implement build
    return const FormDemo();
  }
}
