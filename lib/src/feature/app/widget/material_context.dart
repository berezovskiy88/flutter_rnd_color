import 'package:flutter/material.dart';
import 'package:flutter_rnd_color/src/core/localization/localization.dart';
import 'package:flutter_rnd_color/src/core/router/routes.dart';
import 'package:go_router/go_router.dart';

/// {@template material_context}
/// [MaterialContext] is an entry point to the material context.
///
/// This widget sets locales, themes and routing.
/// {@endtemplate}
class MaterialContext extends StatefulWidget {
  /// {@macro material_context}
  const MaterialContext({super.key});

  @override
  State<MaterialContext> createState() => _MaterialContextState();
}

class _MaterialContextState extends State<MaterialContext> {
  late final router = GoRouter(
    debugLogDiagnostics: true,
    routes: $appRoutes,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: Localization.localizationDelegates,
      supportedLocales: Localization.supportedLocales,
      routerConfig: router,
    );
  }
}
