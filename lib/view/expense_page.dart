import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mymoney/controllers/expense_controller.dart';
import 'package:flutter_mymoney/stores/page_expense_store.dart';
import 'package:intl/intl.dart';

class ExpensePage extends StatelessWidget {
  var controller = ExpenseController();
  var listExp = PageExpenseStore();

  void getListas() {
    controller.getExpensesByUser('1').then((l) => listExp.setLista(l));
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
                      color: Theme.of(context).primaryColorLight,
                      child: Observer(
                        builder: (_) => ListView.builder(
                            padding: const EdgeInsets.all(8),
                            itemCount: listExp.lista.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Theme.of(context).primaryColorDark,
                                      width: 1,
                                      style: BorderStyle.solid),
                                ),
                                // height: 50,
                                child: Center(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '${listExp.lista[index].description}',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.30,
                                            child: Text(
                                                'R\$ ${NumberFormat("#,##").format(listExp.lista[index].valor * 100)} '),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.30,
                                            child: Text(
                                                'Data: ${DateFormat('dd-MM-yyyy').format(listExp.lista[index].data)}'),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
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
