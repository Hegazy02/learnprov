import 'package:flutter/material.dart';
import 'package:learnprov/provider/ProviderModel.dart';
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
                //هنا دا هيتعملو ريبلد لما يتغير قيمه name
                selector: (context, p1) => p1.name!,
                builder: (context, value, child) {
                  print("******1******");
                  return Text(value, style: TextStyle(fontSize: 24));
                },
              ),
              Selector<prov, String>(
                //هنا دا هيتعملو ريبلد لما يتغير قيمه name2
                selector: (context, p2) => p2.name2!,
                builder: (context, value, child) {
                  print("******2******");
                  return Text(value, style: TextStyle(fontSize: 24));
                },
              ),
              Selector<prov, Function>(
                //عملت هنا سيليكتور من الاساس عشان اقدر اوصل للفنكشن الي جواه منغير معمل للزرار ريبلد ملوش لازمه
                //دا مش هيتبني تاني عشان محلصش للمتغير الي هو هنا الفنكشن اي تغيير
                selector: (p0, p1) => p1.changename,
                builder: (context, value, child) {
                  print("******3******");
                  return ElevatedButton(
                      onPressed: () {
                        value();
                      },
                      child: Text("change name 1"));
                },
              ),
              Selector<prov, Function>(
                //دا مش هيتبني تاني عشان محلصش للمتغير الي هو هنا الفنكشن اي تغيير
                selector: (p0, p1) => p1.changename2,
                builder: (context, value, child) {
                  print("******4******");
                  return ElevatedButton(
                      onPressed: () {
                        value();
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
