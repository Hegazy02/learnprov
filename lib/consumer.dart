import 'package:flutter/material.dart';
import 'package:learnprov/provider/consumerProvider.dart';
import 'package:provider/provider.dart';

class consumerPage extends StatelessWidget {
  const consumerPage({super.key});
//لو حطيت كذا ويدجت جوا كونسيومر تابع لنفس البروفيدر زي منا عامل كدا
//كل الويدجتس دي هيتعملهم ريبلد حتى لو انا عايز اعمل لواحده بس

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
              Consumer<prov>(
                builder: (context, value, child) {
                  print("******1******");
                  return Text(value.name!, style: TextStyle(fontSize: 24));
                },
              ),
              Consumer<prov>(
                builder: (context, value, child) {
                  print("******2******");
                  return Text(
                    value.name2!,
                    style: TextStyle(fontSize: 24),
                  );
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
