import 'package:flutter/material.dart';
import 'package:my_app/NewPage.dart';
import 'package:my_app/theme_modal.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  ChangeNotifierProvider(
      create: (_) => ThemeModal(),
      child:Consumer(
          builder: (context,ThemeModal themeModal, child){
            return  MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Geeks for Geeks',
              theme: themeModal.isDark ? ThemeData.dark() : ThemeData.light(),
              home: MyNewPage()
            );
          })

    );
  }
}

