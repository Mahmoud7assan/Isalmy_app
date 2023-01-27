import 'package:flutter/material.dart';
import 'package:flutter_app_c7/hadeth_screen/hadeth_tabs.dart';
import 'package:flutter_app_c7/mytheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Hadeth_Text extends StatelessWidget {
  static const String routeName = 'HadethName';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Stack(children: [
      Image.asset(
        'assets/images/main_background.png',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            (AppLocalizations.of(context)!.isalmi),
            style: Theme.of(context).textTheme.headline2,
          ),
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
                '${args.title}',
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
                      return Container(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          args.content[index],
                          style: Theme.of(context).textTheme.subtitle2,
                          textAlign: TextAlign.center,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: Theme.of(context).primaryColor,
                        thickness: 2,
                      );
                    },
                    itemCount: args.content.length),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
