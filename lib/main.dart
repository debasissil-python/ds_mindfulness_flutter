import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_page.dart';
import 'swapPage0.dart';
import 'swapPage1.dart';
import 'swapPage2.dart';

void main() => runApp(MindfulNess());

class MindfulNess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black87,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/first': (context) => SwapPage0(),
        '/second': (context) => SwapPage1(),
        '/third': (context) => SwapPage2(),
      },
    );
  }
}
