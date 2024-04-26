// ignore_for_file: prefer_match_file_name
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rnd_color/src/core/utils/extensions/context_extension.dart';
import 'package:flutter_rnd_color/src/feature/home/bloc/color_bloc.dart';
import 'package:flutter_rnd_color/src/feature/initialization/widget/dependencies_scope.dart';

/// Color controller
abstract interface class RndColorController {
  /// Current random color.
  Color get randomColor;

  /// Randomize Color
  void randomizeColor();
}

/// {@template color_scope}
/// ColorScope widget.
/// {@endtemplate}
class ColorScope extends StatefulWidget {
  /// {@macro color_scope}
  const ColorScope({
    required this.child,
    super.key,
  });

  /// The widget below this widget in the tree.
  final Widget child;

  /// Obtain the nearest [RndColorController] up its widget tree.
  static RndColorController of(BuildContext context, {bool listen = true}) =>
      context.inhOf<_InheritedColorScope>(listen: listen).colorController;

  @override
  State<ColorScope> createState() => _ColorScopeState();
}

/// State for widget ColorScope.
class _ColorScopeState extends State<ColorScope> implements RndColorController {
  // ignore: avoid_late_keyword
  late final ColorBloc _colorBloc;
  // ignore: avoid_late_keyword
  late ColorState _colorState;
  /* #region Lifecycle */
  @override
  void initState() {
    super.initState();
    // Initial state initialization
    _colorBloc = DependenciesScope.of(context).colorBloc;
    _colorState = _colorBloc.state;
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<ColorBloc, ColorState>(
        bloc: _colorBloc,
        builder: (_, state) {
          _colorState = state;

          return _InheritedColorScope(
            colorController: this,
            state: state,
            child: widget.child,
          );
        },
      );

  @override
  void dispose() {
    // Permanent removal of a tree stent
    super.dispose();
  }

  @override
  Color get randomColor => _colorState.randomColor;

  @override
  void randomizeColor() => _colorBloc.add(const ColorEvent.randomizeColor());

  /* #endregion */
}

/// Inherited widget for quick access in the element tree.
class _InheritedColorScope extends InheritedWidget {
  const _InheritedColorScope({
    required this.colorController,
    required ColorState state,
    required super.child,
  }) : _state = state;

  final RndColorController colorController;
  final ColorState _state;

  @override
  bool updateShouldNotify(covariant _InheritedColorScope oldWidget) =>
      _state != oldWidget._state;
}
