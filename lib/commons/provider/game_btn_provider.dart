import 'package:flutter/material.dart';
import 'package:truth_dare_game/core/core_exports.dart';

class GameBtnProvider extends ChangeNotifier {
  double _scale = 1.0;

  double get scale => _scale;

  void onTapDown() {
    _scale = 1.1;
    notifyListeners();
  }

  void onTapUp(VoidCallback onBackTap) {
    _scale = 1.0;
    notifyListeners();
    HapticHelper.vibrate();
    onBackTap();
  }

  void onTapCancel() {
    _scale = 1.0;
    notifyListeners();
  }
}
