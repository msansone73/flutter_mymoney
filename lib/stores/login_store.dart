import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  @observable
  String email = "";

  @observable
  String password = "";

  @observable
  bool logged = false;

  @observable
  String name ="";

  @observable
  String loginMessage="";

  @action
  void setLogin(String email, 
                String password, 
                bool logged,
                String name,
                String loginMessage) {
    this.email = email;
    this.password = password;
    this.logged = logged;
    this.name = name;
    this.loginMessage=loginMessage;
  }
}
