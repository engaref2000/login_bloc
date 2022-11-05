import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/bloc_provider.dart';

import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<BlocProvider>().bloc;
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailAddress(bloc),
          passWord(bloc),
          const SizedBox(
            height: 20,
          ),
          submitButton(bloc),
        ],
      ),
    );
  }

  Widget emailAddress(Bloc bloc) {
    return StreamBuilder(
        stream: bloc.email,
        builder: ((context, snapshot) => TextField(
              onChanged: bloc.changeEmail,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'your@email.com',
                labelText: 'EMail Address',
                errorText: snapshot.hasError ? snapshot.error.toString() : null,
              ),
            )));
  }

  Widget passWord(Bloc bloc) {
    return StreamBuilder(
        stream: bloc.passWord,
        builder: ((context, snapshot) => TextField(
              onChanged: bloc.changePassWord,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'enter the password ',
                labelText: 'password ',
                errorText: snapshot.hasError ? snapshot.error.toString() : null,
              ),
            )));
    ;
  }

  Widget submitButton(Bloc bloc) {
    return StreamBuilder(
        stream: bloc.validSubmit,
        builder: (context, snapshot) => ElevatedButton(
              // onPressed: snapshot.hasData ? bloc.submitUser : null,
              onPressed: bloc.submitUser,
              child: const Text('Log in '),
            ));
  }
}
