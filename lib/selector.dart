import 'package:flutter/material.dart';
import 'package:learnprov/provider/consumerProvider.dart';
import 'package:provider/provider.dart';

class selectorPage extends StatelessWidget {
  selectorPage({super.key});
// نلاحظ في الديبج كونسول ان السيليكتور بيخليني اعمل ريبلد لويدجت واحده
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => prov(),
      child: Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Selector<prov, String>(
                selector: (context, p1) => p1.name!,
                builder: (context, value, child) {
                  print("******1******");
                  return Text(value, style: TextStyle(fontSize: 24));
                },
              ),
              Selector<prov, String>(
                selector: (context, p2) => p2.name2!,
                builder: (context, value, child) {
                  print("******2******");
                  return Text(value, style: TextStyle(fontSize: 24));
                },
              ),
              Consumer<prov>(
                builder: (context, value, child) {
                  print("******3******");
                  return ElevatedButton(
                      onPressed: () {
                        value.changename();
                      },
                      child: Text("change name 1"));
                },
              ),
              Consumer<prov>(
                builder: (context, value, child) {
                  print("******4******");
                  return ElevatedButton(
                      onPressed: () {
                        value.changename2();
                      },
                      child: Text("change name 2"));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
