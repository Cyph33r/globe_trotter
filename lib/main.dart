import 'package:flutter/material.dart';
import 'package:globe_trotter/screens/country_info_screen.dart';
import 'package:globe_trotter/screens/coutry_list_screen.dart';
import './data/country_api_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GlobeTrotter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const CountryListScreen(),
        CountryInfoScreen.routeName: (context) => const CountryInfoScreen()
      },
    );
  }
}
