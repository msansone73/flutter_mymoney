import 'package:flutter_mymoney/controllers/preference_controller.dart';
import 'package:flutter_mymoney/model/login_view_model.dart';
import 'package:flutter_mymoney/repositories/account_repository.dart';

class AccountController{


   var account = AccountRepository();

   Future<LoginViewModel> getLogin(LoginViewModel log)  async {

      // var ret= await account.getLogin(log);
      // return ret;

      var pf = PreferenceController();

      LoginViewModel lvm;

      await account.getLogin(log).then((l)=> lvm=l);

      await pf.saveData("login_email", lvm.email);

      return lvm;

   }

}