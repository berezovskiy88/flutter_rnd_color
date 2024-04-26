import 'package:flutter_rnd_color/src/feature/initialization/logic/initialization_processor.dart';
import 'package:flutter_rnd_color/src/feature/initialization/model/dependencies.dart';

/// {@template initialization_hook}
/// A hook for the initialization process.
///
/// The [onInit] is called before the initialization process starts.
///
/// The [onInitializing] is called when the
/// initialization process is in progress.
///
/// The [onInitialized] is called when the initialization process is finished.
///
/// The [onError] is called when the initialization process is failed.
/// {@endtemplate}
abstract interface class InitializationHook {
  /// Called before the initialization process starts.
  void Function()? onInit;

  /// Called when the initialization process is in progress.
  void Function(InitializationStepInfo info)? onInitializing;

  /// Called when the initialization process is finished.
  void Function(InitializationResult)? onInitialized;

  /// Called when the initialization process is failed.
  void Function(int, Object error)? onError;

  /// {@macro initialization_hook}
  InitializationHook({
    this.onInit,
    this.onInitializing,
    this.onInitialized,
    this.onError,
  });

  /// Setup the initialization hook.
  factory InitializationHook.setup({
    void Function()? onInit,
    void Function(InitializationStepInfo info)? onInitializing,
    void Function(InitializationResult)? onInitialized,
    void Function(int, Object error)? onError,
  }) = _Hook;
}

final class _Hook extends InitializationHook {
  _Hook({
    super.onInit,
    super.onInitializing,
    super.onInitialized,
    super.onError,
  });
}
