import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('ok2'),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/mainPage');
                },
                child: Text('data'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
