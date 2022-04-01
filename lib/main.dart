import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
//import 'package:localize_and_translate/localize_and_translate.dart';

import 'home.dart';

 main() {
   runApp(
       MyApp(
       ));
//  runApp(LocalizedApp(child: MyApp()));}
 }

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),

      home: MyHomePage(),
//      localizationsDelegates: translator.delegates,
//      locale: translator.locale,
//      supportedLocales: translator.locals(),

    );
  }
}
