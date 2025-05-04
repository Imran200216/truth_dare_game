import 'package:flutter/services.dart';

class HapticHelper {
  /// Light tap (like a small button press)
  static void lightImpact() {
    HapticFeedback.lightImpact();
  }

  /// Medium tap (more noticeable, good for toggle switches)
  static void mediumImpact() {
    HapticFeedback.mediumImpact();
  }

  /// Heavy tap (stronger feedback, good for confirmations)
  static void heavyImpact() {
    HapticFeedback.heavyImpact();
  }

  /// Selection click (good for pickers or sliders)
  static void selectionClick() {
    HapticFeedback.selectionClick();
  }

  /// Vibrate device (short vibration, works on Android)
  static void vibrate() {
    HapticFeedback.vibrate();
  }
}
