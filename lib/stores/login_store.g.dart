// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on _LoginStore, Store {
  final _$emailAtom = Atom(name: '_LoginStore.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$passwordAtom = Atom(name: '_LoginStore.password');

  @override
  String get password {
    _$passwordAtom.context.enforceReadPolicy(_$passwordAtom);
    _$passwordAtom.reportObserved();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.context.conditionallyRunInAction(() {
      super.password = value;
      _$passwordAtom.reportChanged();
    }, _$passwordAtom, name: '${_$passwordAtom.name}_set');
  }

  final _$loggedAtom = Atom(name: '_LoginStore.logged');

  @override
  bool get logged {
    _$loggedAtom.context.enforceReadPolicy(_$loggedAtom);
    _$loggedAtom.reportObserved();
    return super.logged;
  }

  @override
  set logged(bool value) {
    _$loggedAtom.context.conditionallyRunInAction(() {
      super.logged = value;
      _$loggedAtom.reportChanged();
    }, _$loggedAtom, name: '${_$loggedAtom.name}_set');
  }

  final _$nameAtom = Atom(name: '_LoginStore.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$loginMessageAtom = Atom(name: '_LoginStore.loginMessage');

  @override
  String get loginMessage {
    _$loginMessageAtom.context.enforceReadPolicy(_$loginMessageAtom);
    _$loginMessageAtom.reportObserved();
    return super.loginMessage;
  }

  @override
  set loginMessage(String value) {
    _$loginMessageAtom.context.conditionallyRunInAction(() {
      super.loginMessage = value;
      _$loginMessageAtom.reportChanged();
    }, _$loginMessageAtom, name: '${_$loginMessageAtom.name}_set');
  }

  final _$_LoginStoreActionController = ActionController(name: '_LoginStore');

  @override
  void clean() {
    final _$actionInfo = _$_LoginStoreActionController.startAction();
    try {
      return super.clean();
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLogin(String email, String password, bool logged, String name,
      String loginMessage) {
    final _$actionInfo = _$_LoginStoreActionController.startAction();
    try {
      return super.setLogin(email, password, logged, name, loginMessage);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }
}
