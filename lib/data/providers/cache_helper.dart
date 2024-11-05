import 'package:shared_preferences/shared_preferences.dart';

class CachHelper {
  static SharedPreferences? sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool?> saveData({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) return await sharedPreferences?.setString(key, value);
    if (value is int) return await sharedPreferences?.setInt(key, value);
    if (value is bool) return await sharedPreferences?.setBool(key, value);

    return await sharedPreferences?.setDouble(key, value);
  }

  static Future<bool?> saveList({
    required String key,
    required String value,
  }) async {
    List<String> list = CachHelper.getListString(key: key) ?? [];
    list.add(value);
    return await sharedPreferences?.setStringList(key, list);
  }

  static dynamic getData({
    required String key,
  }) {
    return sharedPreferences?.get(key);
  }

  static Future<bool?> removeUser({
    required String key,
  }) async {
    return await sharedPreferences?.remove(key);
  }

  static getString({
    required String key,
    required String value,
  }) {
    return sharedPreferences?.getString(value);
  }

  static getListString({
    required String key,
  }) {
    return sharedPreferences?.getStringList(key);
  }
}
