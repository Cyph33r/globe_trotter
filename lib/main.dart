import 'package:flutter/material.dart';
import 'package:globe_trotter/providers/filter_provider.dart';
import 'package:globe_trotter/screens/country_info_screen.dart';
import 'package:globe_trotter/screens/country_list_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'data/country_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var mode = Brightness.light;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FilterProvider(),
      child: MaterialApp(
        title: 'GlobeTrotter',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.red,
            fontFamily: GoogleFonts.inter().fontFamily,
            brightness: mode,
            appBarTheme: AppBarTheme(
                foregroundColor: Theme.of(context).textTheme.bodyMedium!.color)
            // brightness: Brightness.light,
            ),
        routes: {
          '/': (context) => CountryListScreen(changeTheme: changeTheme),
          CountryInfoScreen.routeName: (context) => const CountryInfoScreen()
        },
      ),
    );
  }

  void changeTheme() {
    setState(() =>
        mode = mode == Brightness.light ? Brightness.dark : Brightness.light);
  }
}
