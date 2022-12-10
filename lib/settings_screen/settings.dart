import 'package:flutter/material.dart';
import 'package:flutter_app_c7/providers/AppConfig.dart';
import 'package:flutter_app_c7/settings_screen/language_sheet.dart';
import 'package:flutter_app_c7/settings_screen/theme_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class Setting_Screen extends StatefulWidget {
  @override
  _Setting_ScreenState createState() => _Setting_ScreenState();
}

class _Setting_ScreenState extends State<Setting_Screen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfig>(context);
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.headline2,
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(14)),
            child: InkWell(
              onTap: () {
                ShowLanguage();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    provider.Languages == 'en'
                        ? AppLocalizations.of(context)!.english
                        : AppLocalizations.of(context)!.arabic,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 35,
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.headline2,
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(14)),
            child: InkWell(
              onTap: () {
                ShowTheme();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.theme,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 35,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void ShowLanguage() {
    showModalBottomSheet(
        context: context, builder: (context) => Language_Screen());
  }

  void ShowTheme() {
    showModalBottomSheet(
        context: context, builder: (context) => Theme_Screen());
  }
}
