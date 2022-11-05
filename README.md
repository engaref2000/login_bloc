# login_bloc

A new Flutter project.
that build login screen to validate
the email containt @ charctrer s
and password at leas 4 charctrer

## Getting Started

used the Stream to handle the input in TextField email
and user the variable validateEmail <StreamTransformer> in class to Validators() and generate error if the input event is not contain @ show in errorText the property of decoration of TextField wich cosume the stream and show the error

used the Stream to handle the input in TextField password
and use the variable validatePassWord <StreamTransformer> in class to Validators() and generate error if the input event is not contain @ show in errorText the property of decoration of TextField wich cosume the stream and show the error
submit buton will be enable only if the email and password an mate the rule so I used the Rx.combineLatest2 to combine to stream email and password and output is true only if tow stream has data
I use BehaviorSubject class in Rxdart of -email and \_password to trac last input value in submintUser function in bloc.dart
the magic of getter appear in refrence of add to sink of \_email and \_passwrod

Function(String) get changeEmail => \_email.sink.add;
Function(String) get changePassWord => \_passWord.sink.add;
