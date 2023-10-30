import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_builder_sample/screens/detail_screen.dart';
import 'package:go_router_builder_sample/screens/error_screen.dart';
import 'package:go_router_builder_sample/screens/home_screen.dart';

part 'router_builder.g.dart';

final router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: '/',
  routes: $appRoutes,
  errorBuilder: (context, state) =>
      ErrorRoute(error: state.error!).build(context, state),
);

@TypedGoRoute<HomeRoute>(
    path: '/', routes: [TypedGoRoute<DetailRoute>(path: 'detail/:userName')])
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}

class DetailRoute extends GoRouteData {
  const DetailRoute({required this.userName, this.userAge, this.$extra});

  final String userName;
  final int? userAge;
  final int? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      DetailScreen(userName: userName, userAge: userAge, extra: $extra);
}

class ErrorRoute extends GoRouteData {
  ErrorRoute({required this.error});

  final Exception error;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ErrorScreen(error: error);
}
