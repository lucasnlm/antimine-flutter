import 'package:antimine/common/settings/settings_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TestSettingsRepository implements SettingsRepository {
  final _prefs = <String, dynamic>{};

  bool _isInitialized = false;

  void clear() {
    _prefs.clear();
  }

  bool get isInitialized => _isInitialized;

  @override
  Future<bool> getBool(String key, bool fallback) {
    return Future.value(_prefs[key] ?? fallback);
  }

  @override
  Future<int> getInt(String key, int fallback) {
    return Future.value(_prefs[key] ?? fallback);
  }

  @override
  Future<double> getDouble(String key, double fallback) {
    return Future.value(_prefs[key] ?? fallback);
  }

  @override
  Future<double?> optDouble(String key) {
    return Future.value(_prefs[key]);
  }

  @override
  Future<String> getString(String key, String fallback) {
    return Future.value(_prefs[key] ?? fallback);
  }

  @override
  Future<String?> optString(String key) {
    return Future.value(_prefs[key]);
  }

  @override
  Future<void> init() {
    _isInitialized = true;
    return Future.value();
  }

  @override
  Future<void> remove(String key) {
    _prefs.remove(key);
    return Future.value();
  }

  @override
  Future<bool> setBool(String key, bool value) {
    _prefs[key] = value;
    return Future.value(true);
  }

  @override
  Future<bool> setInt(String key, int value) {
    _prefs[key] = value;
    return Future.value(true);
  }

  @override
  Future<bool> setString(String key, String value) {
    _prefs[key] = value;
    return Future.value(true);
  }

  @override
  Future<bool> setDouble(String key, double value) {
    _prefs[key] = value;
    return Future.value(true);
  }

  @override
  Future<SharedPreferences> get prefsBuilder => Future.error('Not implemented');
}
