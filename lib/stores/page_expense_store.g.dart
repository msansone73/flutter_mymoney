// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_expense_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PageExpenseStore on _PageExpenseStore, Store {
  final _$listaAtom = Atom(name: '_PageExpenseStore.lista');

  @override
  List<ExpenseModel> get lista {
    _$listaAtom.context.enforceReadPolicy(_$listaAtom);
    _$listaAtom.reportObserved();
    return super.lista;
  }

  @override
  set lista(List<ExpenseModel> value) {
    _$listaAtom.context.conditionallyRunInAction(() {
      super.lista = value;
      _$listaAtom.reportChanged();
    }, _$listaAtom, name: '${_$listaAtom.name}_set');
  }

  final _$_PageExpenseStoreActionController =
      ActionController(name: '_PageExpenseStore');

  @override
  void setLista(List<ExpenseModel> lista) {
    final _$actionInfo = _$_PageExpenseStoreActionController.startAction();
    try {
      return super.setLista(lista);
    } finally {
      _$_PageExpenseStoreActionController.endAction(_$actionInfo);
    }
  }
}
