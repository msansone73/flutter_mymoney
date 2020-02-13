
import 'package:mobx/mobx.dart';
part 'expense_store.g.dart';

class ExpenseStore = _ExpenseStore with _$ExpenseStore;

abstract class _ExpenseStore with Store{

  @observable
  String user="";

  @observable
  String description="";

  @observable
  DateTime data;

  @observable
  double valor=0;
  
  @action 
  void setExpense(String user,
                  String description,
                  DateTime data,
                  double valor
                  ){
    this.user=user;
    this.description=description;
    this.data=data;
    this.valor=valor;
  }

}