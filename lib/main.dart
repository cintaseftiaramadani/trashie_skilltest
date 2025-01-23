import 'package:flutter/material.dart';
import 'package:trashie_skilltest/chat_ai_screen.dart';
import 'package:trashie_skilltest/detail_trashieclass.dart';
import 'package:trashie_skilltest/detail_trashieevent.dart';
import 'package:trashie_skilltest/eco_tiers.dart';
import 'package:trashie_skilltest/eco_trackers.dart';
import 'package:trashie_skilltest/gardener_account.dart';
import 'package:trashie_skilltest/home_screen.dart';
import 'package:trashie_skilltest/login_page.dart';
import 'package:trashie_skilltest/top_gardeners.dart';
import 'package:trashie_skilltest/trashie_class.dart';
import 'package:trashie_skilltest/trashie_event.dart';
import 'package:trashie_skilltest/trashie_market.dart';
import 'package:trashie_skilltest/detail_trashieevent.dart';
import 'colors.dart';

void main() {
  runApp(MaterialApp(title: "Trashie", home: LoginPage()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trashie',
      theme: ThemeData(
        primarySwatch: customColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        'GardenerAccount': (context) => GardenerAccount(),
        'chat_ai_Screen': (context) => ChatAiScreen(),
      },
    );
  }
}
