import 'dart:async';
import 'dart:math' as math;
import 'dart:ui';

/// Color repository
abstract interface class ColorRepository {
  /// Random color
  Color get getRandomColor;

  /// Stream of colors.
  Stream<Color> get getColorStream;

  /// Randomize color
  void randomizeColor();
}

/// Auth repository implementation
final class ColorRepositoryImpl implements ColorRepository {
  final _random = math.Random();

  final _controller = StreamController<Color>.broadcast();

  @override
  Color get getRandomColor => _generateColor();

  @override
  Stream<Color> get getColorStream => _controller.stream.asBroadcastStream(
        onListen: (_) => _controller.add(getRandomColor),
      );

  /// Close
  Future<void> close() async {
    await _controller.close();
  }

  /// Generate color
  Color _generateColor() {
    final int r = _random.nextInt(256);
    final int g = _random.nextInt(256);
    final int b = _random.nextInt(256);

    return Color.fromRGBO(r, g, b, 1.0);
  }

  @override
  void randomizeColor() {
    final randomColor = _generateColor();
    _controller.add(randomColor);
  }
}
