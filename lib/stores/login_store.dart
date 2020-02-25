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
  void clean(){
        this.email = "";
    this.password = "";
    this.logged = false;
    this.name = "";
    this.loginMessage="";
  }

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

  @action
  void setLegged(bool logged){
    this.logged=logged;
  }

  @action
  void setMessage(String loginMessage){
    this.loginMessage=loginMessage;
  }

  @action
  void setEmail(String email){
    this.email=email;
  }

}
