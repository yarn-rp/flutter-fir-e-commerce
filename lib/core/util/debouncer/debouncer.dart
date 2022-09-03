import 'dart:async';

import 'package:flutter/foundation.dart';

class Debouncer {
  Debouncer({
    required this.milliseconds,
  });

  VoidCallback? action;
  final int milliseconds;

  Timer? _timer;
  void cancel() {
    _timer?.cancel();
    _timer = null;
  }

  void run(VoidCallback action) {
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
