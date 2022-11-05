import 'dart:async';

import 'dart:async';
import 'validators.dart';
import 'package:rxdart/rxdart.dart';

// class Bloc extends Object with Validators {
class Bloc extends Validators {
  final _email = BehaviorSubject<String>();
  final _passWord = BehaviorSubject<String>();

  //add data to stream
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get passWord => _passWord.stream.transform(validatePassWord);

  Stream<bool> get validSubmit =>
      Rx.combineLatest2(email, passWord, (emaiValue, passwordValue) => true);

  //add event to sink
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassWord => _passWord.sink.add;
  void submitUser() {
    final username = _email.value;
    final passWord = _passWord.value;
    print('you can login by $username $passWord');
  }

  void dispose() {
    _email.close();
    _passWord.close();
  }
}
