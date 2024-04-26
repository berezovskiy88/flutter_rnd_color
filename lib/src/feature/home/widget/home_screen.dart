import 'package:flutter/material.dart';
import 'package:flutter_rnd_color/src/core/localization/localization.dart';
import 'package:flutter_rnd_color/src/feature/home/widget/color_scope.dart';
import 'package:meta/meta.dart';

/// {@template home_screen}
/// HomeScreen widget.
/// {@endtemplate}
class HomeScreen extends StatefulWidget {
  /// {@macro home_screen}
  const HomeScreen({super.key});

  /// The state from the closest instance of this class
  /// that encloses the given context, if any.
  @internal
  static _HomeScreenState? maybeOf(BuildContext context) =>
      context.findAncestorStateOfType<_HomeScreenState>();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

/// State for widget HomeScreen.
class _HomeScreenState extends State<HomeScreen> {
  /* #region Lifecycle */
  @override
  void initState() {
    super.initState();
    // Initial state initialization
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => ColorScope.of(context).randomizeColor(),
        child: Scaffold(
          backgroundColor: ColorScope.of(context).randomColor,
          body: Center(
            child: Text(
              Localization.of(context).hello_there,
              style: const TextStyle(
                fontSize: 48,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3.0,
                  ),
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 8.0,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  @override
  void dispose() {
    // Permanent removal of a tree stent
    super.dispose();
  }
  /* #endregion */
}
