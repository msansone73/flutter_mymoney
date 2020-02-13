import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mymoney/controllers/expense_controller.dart';
import 'package:flutter_mymoney/stores/page_expense_store.dart';

class ExpensePage extends StatelessWidget {
  var controller = ExpenseController();
  var listExp = PageExpenseStore();

  void getListas() {
    controller.getExpensesByUser('1').then( (l)=>listExp.setLista(l) );
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                        color: Colors.blueAccent,
                        height: 100,
                        child: Column(
                          children: <Widget>[
                            Observer(
                              builder: (_) => Text(
                                '${listExp.lista.length.toString()}',
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                            FlatButton(
                                child: Text('  OK  ',
                                    style: TextStyle(
                                        backgroundColor: Theme.of(context)
                                            .primaryColorDark)),
                                textColor: Colors.white,
                                onPressed: () {
                                  getListas();
                                })
                          ],
                        )),
                    Container(
                      height: 500,
                      color: Colors.greenAccent,
                      child: Observer(
                        builder: (_) => ListView.builder(
                            padding: const EdgeInsets.all(8),
                            itemCount: listExp.lista.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                height: 50,
                                child: Center(
                                    child: Text(
                                        'Entry ${listExp.lista[index].description} - ${listExp.lista[index].valor}')),
                              );
                            }),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
