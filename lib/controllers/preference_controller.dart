import 'package:flutter_mymoney/model/login_view_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceController {


  Future<void> saveData(String chave, String valor) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(chave, valor);
  }

  Future<String> getData(String chave) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(chave) ?? "";
  }



}
