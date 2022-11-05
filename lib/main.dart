import 'package:flutter/material.dart';
import '/src/app.dart';
import 'package:provider/provider.dart';
import './src/blocs/bloc_provider.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => BlocProvider())],
    child: App(),
  ));
}
