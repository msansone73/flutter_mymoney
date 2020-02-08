import 'package:flutter_mymoney/model/login_view_model.dart';
import 'package:flutter_mymoney/repositories/account_repository.dart';

class AccountController{


   var account = AccountRepository();

   Future<LoginViewModel> getLogin(LoginViewModel log)  async {

      var ret= await account.getLogin(log);

      return ret;
   }

}