import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_c7/mytheme.dart';
import 'package:flutter_app_c7/quran_screen/text_sura.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SuraDetailsScreen extends StatefulWidget {
  static String routeName = 'SuraDetails';

  @override
  _SuraDetailsScreenState createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> versec = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as ScreenArgs;
    loadFile(args.index);
    return Stack(children: [
      Image.asset(
        'assets/images/main_background.png',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text((AppLocalizations.of(context)!.isalmi), style: Theme.of(context).textTheme.headline1),
          centerTitle: true,
          elevation: 0,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 35, horizontal: 24),
          decoration: BoxDecoration(
              color: MyThemeData.WhiteColor,
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                args.name,
                style: Theme.of(context).textTheme.headline1,
                textAlign: TextAlign.center,
              ),
              Divider(
                color: MyThemeData.blackColor,
                thickness: 2,
                endIndent: 70,
                indent: 70,
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Text(
                        versec[index],
                        style: Theme.of(context).textTheme.headline2,
                        textAlign: TextAlign.center,
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: Theme.of(context).primaryColor,
                        thickness: 3,
                      );
                    },
                    itemCount: versec.length),
              ),
            ],
          ),
        ),
      )
    ]);
  }

  void loadFile(int index) async {
    String lines = await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String> fileContent = lines.split('\n');
    versec = fileContent;
    setState(() {});
  }
}
