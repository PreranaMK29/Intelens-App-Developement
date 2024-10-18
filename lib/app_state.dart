import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _pmkhappyCount = 0;
  int get pmkhappyCount => _pmkhappyCount;
  set pmkhappyCount(int value) {
    _pmkhappyCount = value;
  }

  int _pmkavgCount = 0;
  int get pmkavgCount => _pmkavgCount;
  set pmkavgCount(int value) {
    _pmkavgCount = value;
  }

  int _pmksadCount = 0;
  int get pmksadCount => _pmksadCount;
  set pmksadCount(int value) {
    _pmksadCount = value;
  }

  int _preeHappyCount = 0;
  int get preeHappyCount => _preeHappyCount;
  set preeHappyCount(int value) {
    _preeHappyCount = value;
  }

  DateTime? _currentDateRK = DateTime.fromMillisecondsSinceEpoch(1721104860000);
  DateTime? get currentDateRK => _currentDateRK;
  set currentDateRK(DateTime? value) {
    _currentDateRK = value;
  }
}
