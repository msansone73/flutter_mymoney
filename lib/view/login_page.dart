import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mymoney/controllers/account_controller.dart';
import 'package:flutter_mymoney/controllers/preference_controller.dart';
import 'package:flutter_mymoney/model/login_view_model.dart';
import 'package:flutter_mymoney/stores/login_store.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  var loginvm = LoginViewModel();
  var accountCount = AccountController();
  var pref = PreferenceController();

  Future<String> setTextBoxEmail() async {
    return await pref.getData("login_email");
    }

  @override
  Widget build(BuildContext context) {
    var loginStore = Provider.of<LoginStore>(context);
    setTextBoxEmail().then((e){loginStore.setEmail(e); this.loginvm.email=e;});
    return Scaffold(
      // appBar: AppBar(
      // ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.only(top: 200, left: 40, right: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Cadastrar',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).accentColor),
                ),
                Divider(),
                Observer(
                  builder: (_) => MyTextField(
                    title: 'E-mail',
                    value: loginStore.email,
                    onChanged: (value) {
                      this.loginvm.email = value;
                    },
                  ),
                ),
                MyTextField(
                  title: 'Password',
                  
                  onChanged: (value) {
                    this.loginvm.password = value;
                  },
                ),
                Divider(),
                Observer(
                  builder: (_) => Text('${loginStore.loginMessage}'),
                ),
                FlatButton(
                  onPressed: () {
                    accountCount.getLogin(loginvm).then((value) {
                      loginStore.setLogin(
                          this.loginvm.email,
                          this.loginvm.password,
                          value.logged,
                          value.name,
                          value.loginMessage);
                      if (value.logged) {
                        Navigator.pushNamed(context, '/mainPage');
                      } else {
                        this.loginvm = value;
                      }
                    });
                  },
                  color: Theme.of(context).primaryColor,
                  child: Text('LOGAR'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  // const MyTextField({Key key}) : super(key: key);
  String title;
  Function onChanged;
  TextEditingController control = TextEditingController();
  MyTextField({String title, Function onChanged, String value}) {
    this.title = title;
    this.onChanged = onChanged;
    control.text=value;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => onChanged(value),
      decoration: InputDecoration(labelText: this.title),
      controller: control,
    );
  }
}
