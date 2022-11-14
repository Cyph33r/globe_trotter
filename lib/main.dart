import 'package:flutter/material.dart';
import 'package:globe_trotter/providers/country_filters.dart';
import 'package:globe_trotter/providers/theme_provider.dart';
import 'package:globe_trotter/screens/country_info_screen.dart';
import 'package:globe_trotter/screens/country_list_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppThemes>(
      create: (context)=>AppThemes(),
      child: ChangeNotifierProvider(
        create: (context) => CountryFilters(),
        child: Builder(
          builder: (context) {
            return MaterialApp(
              title: 'GlobeTrotter',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                  primarySwatch: Colors.red,
                  fontFamily: GoogleFonts.inter().fontFamily,
                  brightness: Provider.of<AppThemes>(context).mode,
                  appBarTheme: AppBarTheme(
                      foregroundColor: Theme.of(context).textTheme.bodyMedium!.color)
                  // brightness: Brightness.light,
                  ),
              routes: {
                '/': (context) => const CountryListScreen(),
                CountryInfoScreen.routeName: (context) => const CountryInfoScreen()
              },
            );
          }
        ),
      ),
    );
  }


}
