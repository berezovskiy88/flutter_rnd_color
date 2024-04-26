import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter_rnd_color/src/core/utils/mixins/set_state_mixin.dart';
import 'package:flutter_rnd_color/src/feature/home/data/color_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_bloc.freezed.dart';
part 'color_event.dart';
part 'color_state.dart';

///
class ColorBloc extends Bloc<ColorEvent, ColorState> with SetStateMixin {
  final ColorRepository _repository;

  StreamSubscription<ColorState>? _colorSubscription;

  ///
  ColorBloc(this._repository)
      : super(ColorState.idle(randomColor: _repository.getRandomColor)) {
    _colorSubscription = _repository.getColorStream
        .map((color) => ColorState.idle(randomColor: color))
        .where((newState) => newState != state)
        .listen(setState);
    on<ColorEvent>(
      (event, __) => event.map(
        randomizeColor: (_) => _repository.randomizeColor(),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _colorSubscription?.cancel();
    await super.close();
  }
}
