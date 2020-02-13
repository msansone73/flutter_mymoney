import 'package:flutter/material.dart';
import 'package:flutter_mymoney/stores/login_store.dart';
import 'package:flutter_mymoney/view/Main_page.dart';
import 'package:flutter_mymoney/view/expense_page.dart';
import 'package:flutter_mymoney/view/incomming_page.dart';
import 'package:flutter_mymoney/view/login_page.dart';
import 'package:flutter_mymoney/view/my_home_page.dart';
import 'package:flutter_mymoney/view/setting_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());
//flutter pub run build_runner build --delete-conflicting-outputs

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
    Provider<LoginStore>.value(value: LoginStore())],
    child: MaterialApp(
        routes: <String, WidgetBuilder> {
      '/homePage': (BuildContext context) => MyHomePage(),
      '/mainPage': (BuildContext context) => MainPage(),
     '/loginPage': (BuildContext context) => LoginPage(),
     '/expensePage': (BuildContext context) => ExpensePage(),
     '/incommingPage': (BuildContext context) => IncommingPage(),
     '/settingPage': (BuildContext context) => SettingPage(),
    },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/loginPage',
    ),
    );
  }
}

