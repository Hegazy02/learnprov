import 'package:flutter/material.dart';
import 'package:learnprov/provider/ProviderModel.dart';
import 'package:provider/provider.dart';

class multiprovPage extends StatelessWidget {
  const multiprovPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => prov(),
        ),
        ChangeNotifierProvider(
          create: (context) => provTwo(),
        ),
      ],
      child: Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<prov>(builder: (context, value, child) {
                print("*****1******");
                return Text(value.name!, style: TextStyle(fontSize: 24));
              }),
              Consumer<prov>(builder: (context, value, child) {
                print("***2******");
                return ElevatedButton(
                    onPressed: () {
                      value.changename();
                    },
                    child: Text("change"));
              }),
              Consumer<provTwo>(builder: (context, value, child) {
                print("*****3******");
                return Text(value.nameTwo!, style: TextStyle(fontSize: 24));
              }),
              Consumer<provTwo>(builder: (context, value, child) {
                print("******4*****");
                return ElevatedButton(
                    onPressed: () {
                      value.changenameTwo();
                    },
                    child: Text("change"));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
