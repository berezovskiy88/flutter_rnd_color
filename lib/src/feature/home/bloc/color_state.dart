// ignore_for_file: avoid_unused_parameters
part of 'color_bloc.dart';

@freezed

///
class ColorState with _$ColorState {
  ///
  const factory ColorState.idle({
    required Color randomColor,
    Object? error,
  }) = _IdleColorState;
}
