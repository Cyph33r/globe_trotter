import 'package:flutter/material.dart';
import 'package:globe_trotter/screens/country_info_screen.dart';
import 'package:globe_trotter/screens/coutry_list_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import './data/country_api_helper.dart';
//todo:check for country text overflow
//todo:make failsafe for the country flag image or implement caching

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
        fontFamily: GoogleFonts.inter().fontFamily,
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(foregroundColor: Theme.of(context).textTheme.bodyMedium!.color)
        // brightness: Brightness.light,
      ),

      routes: {
        '/': (context) => const CountryListScreen(),
        CountryInfoScreen.routeName: (context) => const CountryInfoScreen()
      },
    );
  }
}
