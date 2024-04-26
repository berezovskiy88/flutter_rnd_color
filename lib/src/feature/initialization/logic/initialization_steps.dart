import 'dart:async';

import 'package:flutter_rnd_color/src/feature/home/bloc/color_bloc.dart';
import 'package:flutter_rnd_color/src/feature/home/data/color_repository.dart';
import 'package:flutter_rnd_color/src/feature/initialization/model/dependencies.dart';
import 'package:flutter_rnd_color/src/feature/initialization/model/initialization_progress.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A function which represents a single initialization step.
typedef StepAction = FutureOr<void>? Function(InitializationProgress progress);

/// The initialization steps, which are executed in the order they are defined.
///
/// The [Dependencies] object is passed to each step, which allows the step to
/// set the dependency, and the next step to use it.
mixin InitializationSteps {
  /// The initialization steps,
  /// which are executed in the order they are defined.
  final initializationSteps = <String, StepAction>{
    'Shared Preferences': (progress) async {
      final sharedPreferences = await SharedPreferences.getInstance();
      progress.dependencies.sharedPreferences = sharedPreferences;
    },
    // ColorRepository
    'Color Repository': (progress) async {
      final colorRepository = ColorRepositoryImpl();
      progress.dependencies.colorRepository = colorRepository;
    },

    'ColorBloc': (progress) async {
      final colorRepository = progress.dependencies.colorRepository;
      final colorBloc = ColorBloc(colorRepository);

      progress.dependencies.colorBloc = colorBloc;
    },
  };
}
