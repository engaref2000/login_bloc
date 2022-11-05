import 'dart:async';

class Validators {
  final validateEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (email.contains('@')) {
      sink.add(email);
    } else {
      sink.addError('error in Email enter       ');
    }
  });

  final validatePassWord = StreamTransformer<String, String>.fromHandlers(
      handleData: (passWord, sink) {
    if (passWord.length > 3) {
      sink.add(passWord);
    } else {
      sink.addError('Password must be at least 4 characters');
    }
  });
}
