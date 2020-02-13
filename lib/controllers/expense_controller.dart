import 'package:flutter_mymoney/model/expense_model.dart';
import 'package:flutter_mymoney/repositories/expense_repository.dart';

class ExpenseController{

  var expRepo = ExpenseRepository();

  Future<List<ExpenseModel>> getExpensesByUser(String user)  async {
    var retorno = List<ExpenseModel>();
    await expRepo.getExpenseByUser(user).
    then((r) =>retorno=r);
    return retorno;

  }

}