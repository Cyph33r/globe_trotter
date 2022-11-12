import 'package:flutter/material.dart';
import 'package:globe_trotter/screens/country_info_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/country_repository.dart';
import '../widgets/country_list_item.dart';

class CountryListScreen extends StatelessWidget {
  const CountryListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.light_mode,))
        ],
        title: RichText(
          text: TextSpan(
              text: "Explore",
              children: const [
                TextSpan(text: ".", style: TextStyle(color: Color(0xFFFF6C00)))
              ],
              style: GoogleFonts.pacifico(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 26)),
        ),
      ),
      body: GestureDetector(
        onTap: () => Navigator.of(context)
            .pushNamed(CountryInfoScreen.routeName, arguments: 'france'),
        child: Column(
          children: [
            FutureBuilder(
              future: CountryRepository.loadCounties().onError(
                  (error, stackTrace) =>
                      print(error.toString() + stackTrace.toString())),
              builder: (context, data) => data.connectionState ==
                      ConnectionState.done
                  ? Expanded(
                      child: ListView.builder(
                          itemCount:
                              CountryRepository.getAllCountriesSorted.length,
                          itemBuilder: (context, itemIndex) {
                            final country = CountryRepository
                                .getAllCountriesSorted
                                .toList()[itemIndex];
                            return CountryListItem(
                              country: country,
                              key: ValueKey(country.id),
                            );
                          }))
                  : const Center(child: CircularProgressIndicator()),
            ),
          ],
        ),
      ),
    );
  }
}
