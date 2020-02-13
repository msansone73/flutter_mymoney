import 'package:flutter_mymoney/model/login_view_model.dart';
import 'package:flutter_mymoney/repositories/abstract_repository.dart';
import 'package:mongo_dart/mongo_dart.dart';

class AccountRepository with AbstractRepository {
  // Db db = new Db("mongodb://root:senha@msansone.com.br:27017/mymoney?authSource=admin");

  Future<LoginViewModel> getLogin(LoginViewModel loginViewModel) async {
    var vet;

    await db.open();
    var coll = db.collection('users');

    await coll
        .find(where
            .eq("email", loginViewModel.email.trim())
            .and(where.eq("password", loginViewModel.password.trim())))
        .forEach((v) => vet = v);

    db.close();

    if (vet == null) {
      loginViewModel.logged = false;
      loginViewModel.loginMessage = "login incorreto.";
    } else {
      loginViewModel.logged = true;
      loginViewModel.name = vet["name"];
      loginViewModel.loginMessage = "";
    }

    return loginViewModel;
  }
}
