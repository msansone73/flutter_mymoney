

import 'package:flutter/material.dart';
import 'package:flutter_mymoney/stores/login_store.dart';
import 'package:provider/provider.dart';

class MainPage  extends StatelessWidget {
  const MainPage ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var loginStore = Provider.of<LoginStore>(context);
    return Scaffold(
      body: Center(
        
        child: 
        loginStore.logged?
        Text('Seja bem vindo,'+loginStore.name):
        Text('sorry,'),

      ),
    );
  }
}