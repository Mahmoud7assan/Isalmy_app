import 'package:flutter/material.dart';
import 'package:flutter_app_c7/hadeth_screen/hadeth_tabs.dart';
import 'package:flutter_app_c7/providers/AppConfig.dart';
import 'package:flutter_app_c7/quran_screen/quran_tabs.dart';
import 'package:flutter_app_c7/radio_screen/radio_tabs.dart';
import 'package:flutter_app_c7/sebha_screen/tasbeh_tabs.dart';
import 'package:flutter_app_c7/settings_screen/settings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class Home_Screen extends StatefulWidget {
  static const String routeName = 'Home_Screen';

  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfig>(context);
    return Stack(
      children: [
        provider.appTheme == ThemeMode.light
            ? Image.asset(
                'assets/images/main_background.png',
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill,
              )
            : Image.asset(
                'assets/images/night_background.png',
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
        Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.isalmi,
                style: Theme.of(context).textTheme.headline1),
            centerTitle: true,
            elevation: 0,
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: selected,
              onTap: (index) {
                selected = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon:
                        ImageIcon(AssetImage('assets/images/icon_moshaf.png')),
                    label: AppLocalizations.of(context)!.quran),
                BottomNavigationBarItem(
                    icon:
                        ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                    label: AppLocalizations.of(context)!.hadethName),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                    label: AppLocalizations.of(context)!.tasbeh),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                    label: AppLocalizations.of(context)!.radio),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings_rounded),
                    label: AppLocalizations.of(context)!.settings)
              ],
            ),
          ),
          body: tabs[selected],
        )
      ],
    );
  }

  List<Widget> tabs = [
    Quran_Tabs(),
    Hadeth_Tabs(),
    Tasebh_Tabs(),
    Radio_Tabs(),
    Setting_Screen()
  ];
}
