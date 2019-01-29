import 'dart:async';

class Validators {
  final validateEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if ((email.contains('@')) && (email.contains('.'))) {
      sink.add(email);
    } else {
      sink.addError('please enter a vaild email');
    }
  });

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password.length >= 6) {
      sink.add(password);
    } else {
      sink.addError('password must be at least 6 characters or higher');
    }
  });
}
