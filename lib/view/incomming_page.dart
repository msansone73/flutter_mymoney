import 'package:flutter/material.dart';

class IncommingPage extends StatelessWidget {
  const IncommingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              child: Text('Incomming.'),
            ),
          ),
        ),
      ),
    );
  }
}