import 'package:flutter/material.dart';
//import 'package:gapsi/views/homepage.dart';
// import 'package:gapsi/views/bepa_add.dart';
// import 'package:gapsi/views/bepa_list.dart';
// import 'package:gapsi/views/bepa_read.dart';
// import 'package:gapsi/views/bepa_view.dart';
//import 'package:desktop/desktop.dart' as desktop;
import 'package:providerexamples/views/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gabinete Psicológico',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: MyHomePage(title: 'GAPSI'),
    // return desktop.DesktopApp(
    //   theme: desktop.ThemeData(
    //     brightness: Brightness.dark,
    //     primaryColor: desktop.PrimaryColors.royalBlue.primaryColor,
    //   ),
    //   home: const MyHomePage(title: 'GAPSI')
      //home: BepaView(initialView: 2),
      // initialRoute: '/',
      // routes: {
      //   //'/': (context) => MyHomePage(title: 'GAPSI'),
      //   '/bepa_view': (context) => BepaView(initialView: 2),
      //   '/bepa_add': (context) => BepaAdd(),
      //   '/bepa_read': (context) => BepaRead(),
      //   '/bepa_list': (context) => BepaList(),
      // },
    );
  }
}