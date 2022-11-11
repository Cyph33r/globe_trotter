import 'package:flutter/material.dart';
import 'package:globe_trotter/screens/country_info_screen.dart';

import '../data/country_repository.dart';
import '../widgets/country_list_item.dart';

class CountryListScreen extends StatelessWidget {
  const CountryListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => Navigator.of(context)
            .pushNamed(CountryInfoScreen.routeName, arguments: 'nigeria'),
        child: Column(
          children: [
            FutureBuilder(
              future: CountryRepository.loadCounties(),
              builder: (context, data) =>
                  data.connectionState == ConnectionState.done
                      ? Expanded(
                        child: ListView(
                            children: CountryRepository.getAllCountries.values
                                .map((country) => CountryListItem(country: country))
                                .toList(),
                          ),
                      )
                      : const Center(child: CircularProgressIndicator()),
            ),
          ],
        ),
      ),
    );
  }
}
