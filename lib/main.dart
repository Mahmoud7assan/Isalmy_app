import 'package:flutter/material.dart';
import 'package:flutter_app_c7/Home/home_screen.dart';
import 'package:flutter_app_c7/hadeth_screen/hadeth_text.dart';
import 'package:flutter_app_c7/mytheme.dart';
import 'package:flutter_app_c7/providers/AppConfig.dart';
import 'package:flutter_app_c7/quran_screen/sura_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      ChangeNotifierProvider(create: (context) => AppConfig(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfig>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home_Screen.routeName,
      routes: {
        Home_Screen.routeName: (context) => Home_Screen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        Hadeth_Text.routeName : (context)=>Hadeth_Text()
      },
      theme: MyThemeData.LightTheme,
      darkTheme: MyThemeData.DarkTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.Languages),
      themeMode: provider.appTheme,
    );
  }
}
