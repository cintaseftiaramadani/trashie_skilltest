import 'package:flutter/material.dart';
import 'package:trashie_skilltest/eco_tiers.dart';
import 'package:trashie_skilltest/eco_trackers.dart';
import 'package:trashie_skilltest/home_screen.dart';
import 'package:trashie_skilltest/login_page.dart';
import 'package:trashie_skilltest/top_gardeners.dart';
import 'package:trashie_skilltest/trashie_class.dart';
import 'package:trashie_skilltest/trashie_event.dart';
import 'package:trashie_skilltest/trashie_market.dart';

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
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        'TopGardners': (context) => const TopGardeners(),
        'EcoTiers': (context) => const EcoTiers(),
        'EcoTrackers': (context) => const EcoTrackers(),
        'TrashieMarket': (context) => const TrashieMarket(),
        'TrashieEvent': (context) => const TrashieEvent(),
        'TrashieClass': (context) => const TrashieClass(),
      },
    );
  }
}
