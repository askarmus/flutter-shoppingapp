import 'package:shared_preferences/shared_preferences.dart';
import 'i_shared_prefs_repo.dart';

class SharedPrefsRepo implements ISharedPrefsRepo {

  Future get(String key) async {
    var shared = await SharedPreferences.getInstance();
    return shared.get(key);
  }

  Future put(String key, dynamic value) async {
    var shared = await SharedPreferences.getInstance();
    switch (value.runtimeType) {
      case bool:
        shared.setBool(key, value);
        break;
      case int:
        shared.setInt(key, value);
        break;
      case int:
        shared.setDouble(key, value);
        break;
      case String:
        shared.setString(key, value);
        break;
      case List:
        shared.setStringList(key, value);
        break;
    }
  }
}
//  Future delete(String key) async {
//    var shared = await SharedPreferences.getInstance();
//    shared.remove(key);
//  }
