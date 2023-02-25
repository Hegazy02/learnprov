import 'package:flutter/material.dart';
import 'package:learnprov/provider/ProviderModel.dart';
import 'package:provider/provider.dart';

class ofContext extends StatelessWidget {
  const ofContext({super.key});
//بيعمل ري بلد لكل الويدجت الي بيتعرف فيها
  @override
  Widget build(BuildContext context) {
    print("******5******");
    var pp = Provider.of<prov>(context); // بتساوي context.watch<prov>()
    var ss = context.watch<prov>();
    //كدا احنا هنا عرفنا ال اوف كونتكست بروفايدر
    return Column(
      children: [
        Text(pp.name!),
        ElevatedButton(onPressed: () => pp.changename(), child: Text("test")),
        Text(ss.name!),
        ElevatedButton(onPressed: () => ss.changename(), child: Text("test")),
      ],
    );
  }
}
