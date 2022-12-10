import 'package:flutter/material.dart';
import 'package:flutter_app_c7/providers/AppConfig.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class Language_Screen extends StatefulWidget {
  @override
  _Language_ScreenState createState() => _Language_ScreenState();
}

class _Language_ScreenState extends State<Language_Screen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfig>(context);
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: () {
                provider.ChangeLanguage('en');
              },
              child: provider.Languages == 'en'
                  ? Selected(AppLocalizations.of(context)!.english)
                  : UnSelected(AppLocalizations.of(context)!.english)),
          SizedBox(
            height: 15,
          ),
          InkWell(
              onTap: () {
                provider.ChangeLanguage('ar');
              },
              child: provider.Languages == 'ar'
                  ? Selected(AppLocalizations.of(context)!.arabic)
                  : UnSelected(AppLocalizations.of(context)!.arabic))
        ],
      ),
    );
  }

  Widget Selected(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.headline5,
        ),
        Icon(
          Icons.check,
          size: 25,
          color: Theme.of(context).primaryColor,
        )
      ],
    );
  }

  Widget UnSelected(String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline2,
    );
  }
}
