import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/theme_modal.dart';
import 'package:provider/provider.dart';
import 'package:switcher_button/switcher_button.dart';

class MyNewPage extends StatefulWidget {
  @override
  _MyNewPageState createState() => _MyNewPageState();
}

class _MyNewPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (context, ThemeModal themeNotifier, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text(themeNotifier.isDark ? "Dark Theme" : "Light Theme"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SwitcherButton(
                    value: themeNotifier.isDark ? false : true,
                    onChange: (value) {
                      themeNotifier.isDark
                          ? themeNotifier.isDark = false
                          : themeNotifier.isDark = true;
                    },
                  ),
                  Text(
                    'Welcome to \n Geeks for Geeks',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
            ),
          );
        });
  }
}