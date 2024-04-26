// ignore_for_file: prefer_match_file_name
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_rnd_color/src/feature/home/widget/home_screen.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

/// Home route
@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}
