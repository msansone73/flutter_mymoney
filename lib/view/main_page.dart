import 'package:flutter/material.dart';
import 'package:flutter_mymoney/stores/login_store.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var loginStore = Provider.of<LoginStore>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('MyMoney'),
        //automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              // accountName: Text(loginStore.name),
              // accountEmail: Text(loginStore.email),
              accountName: Text(
                loginStore.name.toUpperCase(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(loginStore.email.toLowerCase()),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.account_circle),
              ),
            ),
            ListTile(
              title: Text('Expense'),
              leading: Icon(Icons.money_off),
              onTap: () => Navigator.pushNamed(context, '/expensePage'),
            ),
            ListTile(
              title: Text('Incoming'),
              leading: Icon(Icons.monetization_on),
              onTap: () => Navigator.pushNamed(context, '/incommingPage'),
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
              onTap: () => Navigator.pushNamed(context, '/settingPage'),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomLeft,
                child: ListTile(
                  title: Text('Logout'),
                  leading: Icon(Icons.settings),
                  // onTap: () => Navigator.pushNamed(context, '/loginPage'),
                  onTap: () {
                    loginStore.clean();
                    Navigator.popAndPushNamed(context, '/loginPage');}
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: loginStore.logged
            ? Text('Seja bem vindo,' + loginStore.name)
            : Text('sorry,'),
      ),
    );
  }
}
