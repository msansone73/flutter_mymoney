import 'package:flutter_mymoney/model/expense_model.dart';
import 'package:flutter_mymoney/repositories/expense_repository.dart';

class ExpenseController{

  var expRepo = ExpenseRepository();

  List<ExpenseModel> getExpensesByUser(String user)  {
    
    // var retorno = await expRepo.getExpenseByUser(user);
    print('ok');
    var retorno = List<ExpenseModel>();
    retorno.add(ExpenseModel('user', 'description0', DateTime.now(), 30.5));
    retorno.add(ExpenseModel('user', 'description1', DateTime.now(), 31.5));
    retorno.add(ExpenseModel('user', 'description2', DateTime.now(), 32.5));
    retorno.add(ExpenseModel('user', 'description3', DateTime.now(), 33.5));
    return retorno;

  }

}