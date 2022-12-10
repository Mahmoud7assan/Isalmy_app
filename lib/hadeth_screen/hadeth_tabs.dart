import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class Hadeth_Tabs extends StatefulWidget {
  @override
  _Hadeth_TabsState createState() => _Hadeth_TabsState();
}

class _Hadeth_TabsState extends State<Hadeth_Tabs> {

  @override
  Widget build(BuildContext context) {

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

      ],
    );
  }}