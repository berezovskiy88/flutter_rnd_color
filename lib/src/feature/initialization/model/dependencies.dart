// ignore_for_file: avoid_late_keyword
import 'package:flutter_rnd_color/src/feature/home/bloc/color_bloc.dart';
import 'package:flutter_rnd_color/src/feature/home/data/color_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// {@template dependencies}
/// Dependencies container
/// {@endtemplate}
base class Dependencies {
  /// Shared preferences
  late final SharedPreferences sharedPreferences;

  /// Color repository
  late final ColorRepository colorRepository;

  /// Color bloc
  late final ColorBloc colorBloc;

  /// {@macro dependencies}
  Dependencies();
}

/// {@template initialization_result}
/// Result of initialization
/// {@endtemplate}
final class InitializationResult {
  /// The dependencies
  final Dependencies dependencies;

  /// The number of steps
  final int stepCount;

  /// The number of milliseconds spent
  final int msSpent;

  /// {@macro initialization_result}
  const InitializationResult({
    required this.dependencies,
    required this.stepCount,
    required this.msSpent,
  });

  @override
  String toString() => '$InitializationResult('
      'dependencies: $dependencies, '
      'stepCount: $stepCount, '
      'msSpent: $msSpent'
      ')';
}
