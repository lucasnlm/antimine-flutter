import 'package:shared_preferences/shared_preferences.dart';

/// A repository for saving and loading settings.
class SettingsRepository {
  SettingsRepository({
    Future<SharedPreferences>? prefsBuilder,
  }) : prefsBuilder = prefsBuilder ?? _buildSharedPreferences();

  late SharedPreferences _prefs;
  final Future<SharedPreferences> prefsBuilder;

  /// Initializes the repository.
  /// Must be called before any other method.
  Future<void> init() async {
    _prefs = await prefsBuilder;
  }

  /// Set a int value for the given key.
  Future<bool> setInt(
    String key,
    int value,
  ) async {
    return _prefs.setInt(key, value);
  }

  /// Get a int value for the given key.
  /// If the key is not found, the fallback value is returned.
  Future<int> getInt(
    String key,
    int fallback,
  ) async {
    return _prefs.getInt(key) ?? fallback;
  }

  /// Set a double value for the given key.
  Future<bool> setDouble(
    String key,
    double value,
  ) async {
    return _prefs.setDouble(key, value);
  }

  /// Set a double value for the given key.
  /// If the key is not found, the fallback value is returned.
  Future<double> getDouble(
    String key,
    double fallback,
  ) async {
    return _prefs.getDouble(key) ?? fallback;
  }

  /// Set a double value for the given key.
  /// If the key is not found, the fallback value is returned.
  Future<double?> optDouble(
    String key,
  ) async {
    return _prefs.getDouble(key);
  }

  /// Set a bool value for the given key.
  Future<bool> setBool(
    String key,
    bool value,
  ) async {
    return _prefs.setBool(key, value);
  }

  /// Get a bool value for the given key.
  /// If the key is not found, the fallback value is returned.
  Future<bool> getBool(
    String key,
    bool fallback,
  ) async {
    return _prefs.getBool(key) ?? fallback;
  }

  /// Set a String value for the given key.
  Future<bool> setString(
    String key,
    String value,
  ) async {
    return _prefs.setString(key, value);
  }

  /// Get a String value for the given key.
  /// If the key is not found, the fallback value is returned.
  Future<String> getString(
    String key,
    String fallback,
  ) async {
    return _prefs.getString(key) ?? fallback;
  }

  /// Get a String value for the given key.
  /// If the key is not found, the fallback value is returned.
  Future<String?> optString(
    String key,
  ) async {
    return _prefs.getString(key);
  }

  /// Remove the value for the given key.
  Future<void> remove(String key) async {
    await _prefs.remove(key);
  }

  /// Build the SharedPreferences instance.
  static Future<SharedPreferences> _buildSharedPreferences() {
    SharedPreferences.setPrefix('preference_');
    return SharedPreferences.getInstance();
  }
}
