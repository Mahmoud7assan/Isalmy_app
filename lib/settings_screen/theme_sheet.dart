import 'package:flutter/material.dart';
import 'package:flutter_app_c7/providers/AppConfig.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class Theme_Screen extends StatefulWidget {
  @override
  _Language_ScreenState createState() => _Language_ScreenState();
}

class _Language_ScreenState extends State<Theme_Screen> {
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
                provider.ChangeTheme(ThemeMode.light);
              },
              child: provider.appTheme == ThemeMode.light
                  ? Selected(AppLocalizations.of(context)!.light)
                  : UnSelected(AppLocalizations.of(context)!.light)),
          SizedBox(
            height: 15,
          ),
          InkWell(
              onTap: () {
                provider.ChangeTheme(ThemeMode.dark);
              },
              child: provider.appTheme == ThemeMode.dark
                  ? Selected(AppLocalizations.of(context)!.dark)
                  : UnSelected(AppLocalizations.of(context)!.dark))
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
      style: Theme.of(context).textTheme.headline5,
    );
  }
}
