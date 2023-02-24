import 'package:flutter/material.dart';
import 'package:learnprov/consumer.dart';
import 'package:learnprov/provider/consumerProvider.dart';
import 'package:learnprov/selector.dart';
import 'package:provider/provider.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: selectorPage());
  }
}
