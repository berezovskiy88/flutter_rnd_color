import 'package:flutter_rnd_color/src/feature/initialization/model/dependencies.dart';
import 'package:flutter_rnd_color/src/feature/initialization/model/environment_store.dart';

/// {@template initialization_progress}
/// A class which represents the initialization progress.
/// {@endtemplate}
final class InitializationProgress {
  /// Mutable version of dependencies
  final Dependencies dependencies;

  /// Environment store
  final EnvironmentStore environmentStore;

  /// {@macro initialization_progress}
  const InitializationProgress({
    required this.dependencies,
    required this.environmentStore,
  });
}
