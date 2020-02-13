import 'package:flutter_mymoney/model/expense_model.dart';
import 'package:mobx/mobx.dart';

part 'page_expense_store.g.dart';

class PageExpenseStore = _PageExpenseStore  with _$PageExpenseStore;

abstract class _PageExpenseStore with Store {

  @observable
  List<ExpenseModel> lista= List<ExpenseModel>();

  @action 
  void setLista(List<ExpenseModel> lista){
    this.lista=lista;
  }

}