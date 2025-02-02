import 'dart:async';
import 'dart:ui';

class Debouncer {
  final Duration duration;
  VoidCallback? action;
  Timer? _timer;

  Debouncer({
    required this.duration,
  });

  void run(VoidCallback action) {
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer(duration, action);
  }

  void cancel() {
    if (_timer != null) {
      _timer!.cancel();
      _timer = null;
    }
  }
}
