class ExpenseModel{

  ExpenseModel(  String user,
  String description,
  DateTime data,
  double valor){
    this.user=user;
    this.description=description;
    this.data=data;
    this.valor=valor;

  }

  String user;
  String description;
  DateTime data;
  double valor;
}