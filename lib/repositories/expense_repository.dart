
import 'package:flutter_mymoney/model/expense_model.dart';
import 'package:flutter_mymoney/repositories/abstract_repository.dart';
import 'package:mongo_dart/mongo_dart.dart';

class ExpenseRepository with AbstractRepository {
  
  Future<List<ExpenseModel>> getExpenseByUser( String user) async {
    var retorno=List<ExpenseModel>();
    await db.open();
    var col = db.collection('expense');

 
  await col.find(where.eq("user", user))
  .forEach((x) {
      int i = x["valor"];
      var exp = ExpenseModel(x["user"],
      x["description"],
      DateTime.parse(x["data"]),
      i.toDouble() ) ;
      retorno.add(exp);
  });

    db.close();

    return retorno;
  }
}
