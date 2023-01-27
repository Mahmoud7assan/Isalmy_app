import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_c7/hadeth_screen/hadeth_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/services.dart' show rootBundle;

class Hadeth_Tabs extends StatefulWidget {
  @override
  _Hadeth_TabsState createState() => _Hadeth_TabsState();
}

class _Hadeth_TabsState extends State<Hadeth_Tabs> {
  List<Hadeth> AllHadeth = [];

  @override
  Widget build(BuildContext context) {
    loadHadethFile();
    return Column(
      children: [
        Center(child: Image.asset('assets/images/logo_hadeth.png')),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Text(
          AppLocalizations.of(context)!.hadethName,
          style: Theme.of(context).textTheme.headline2,
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return HadethItem(
                  hadeth: AllHadeth[index],
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  color: Theme.of(context).primaryColor,
                  thickness: 3,
                );
              },
              itemCount: 30),
        )
      ],
    );
  }

  void loadHadethFile() async {
    String ahadethContent =
    await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allHadethList = ahadethContent.split('#\r\n'); // 50
    for (int i = 0; i < allHadethList.length; i++) {
      List<String> eachHadeth = allHadethList[i].split('\n'); // kol hadeth w7do
      String title = eachHadeth[0]; // title
      eachHadeth.removeAt(0);
      Hadeth hadeth = Hadeth(title: title, content: eachHadeth);
      AllHadeth.add(hadeth);
    }
    setState(() {});
  }
}

class Hadeth {
  String title;
  List<String> content;

  Hadeth({required this.title, required this.content});
}
