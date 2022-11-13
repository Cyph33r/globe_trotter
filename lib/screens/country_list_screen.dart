import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../data/country_repository.dart';
import '../providers/filter_provider.dart';
import '../widgets/country_list_panel.dart';
import '../widgets/filter_panel.dart';
import '../widgets/search_bar.dart';

class CountryListScreen extends StatelessWidget {
  final VoidCallback changeTheme;

  CountryListScreen({required this.changeTheme, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Provider.of<FilterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: changeTheme,
              icon: Icon(
                Theme.of(context).brightness == Brightness.light
                    ? Icons.light_mode_outlined
                    : Icons.dark_mode_outlined,
                color: Theme.of(context).iconTheme.color,
              ))
        ],
        title: RichText(
          text: TextSpan(
              text: "Explore",
              children: const [
                TextSpan(text: ".", style: TextStyle(color: Color(0xFFFF6C00)))
              ],
              style: GoogleFonts.pacifico(
                  color: Theme.of(context).textTheme.titleMedium?.color,
                  fontWeight: FontWeight.w700,
                  fontSize: 26)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SearchBar(),
            const FilterPanel(),
            const SizedBox(
              height: 8,
            ),
            FutureBuilder(
              future: CountryRepository.loadCounties().onError(
                  (error, stackTrace) =>
                      print(error.toString() + stackTrace.toString())),
              builder: (context, data) =>
                  data.connectionState == ConnectionState.done
                      ? Expanded(child: CountryListPanel())
                      : const Expanded(
                          child: Center(child: CircularProgressIndicator())),
            ),
          ],
        ),
      ),
    );
  }
}
