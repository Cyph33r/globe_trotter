import 'package:flutter/material.dart';
import 'package:globe_trotter/providers/theme_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart'
    as key;

import '../data/country_repository.dart';
import '../providers/country_filters.dart';
import '../widgets/country_list_panel.dart';
import '../widgets/filter_panel.dart';
import '../widgets/search_bar.dart';

class CountryListScreen extends StatefulWidget {
  const CountryListScreen({Key? key}) : super(key: key);

  @override
  State<CountryListScreen> createState() => _CountryListScreenState();
}

class _CountryListScreenState extends State<CountryListScreen> {
  @override
  Widget build(BuildContext context) {
    var theme = Provider.of<AppThemes>(context, listen: false);
    Provider.of<CountryFilters>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: theme.toggleTheme,
              icon: Icon(
                theme.mode == Brightness.light
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
      body: RefreshIndicator(
        onRefresh: () async {
          await CountryRepository.loadCounties();
          setState(() {});
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SearchBar(),
              const FilterPanel(),
              const SizedBox(
                height: 8,
              ),
              FutureBuilder(
                future: CountryRepository.loadCounties(),
                builder: (context, data) =>
                    data.connectionState == ConnectionState.done
                        ? const Expanded(child: CountryListPanel())
                        : const Expanded(
                            child: Center(child: CircularProgressIndicator())),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    if (mounted) {
      key.KeyboardVisibilityController().onChange.listen((event) {
        if (event == false) FocusManager.instance.primaryFocus?.unfocus();
      });
    }
  }
}
