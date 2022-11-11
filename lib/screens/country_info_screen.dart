import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:globe_trotter/data/country_repository.dart';
import 'package:globe_trotter/widgets/country_map_card.dart';

import '../models/country.dart';

class CountryInfoScreen extends StatelessWidget {
  const CountryInfoScreen({Key? key}) : super(key: key);
  static const routeName = '/country_info_screen';

  @override
  Widget build(BuildContext context) {
    final countryCode = ModalRoute.of(context)!.settings.arguments as String;
    final country = CountryRepository.getAllCountries[countryCode]!;

    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text(country.name?.common ?? "Unknown"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          CountryMapCard(
            country: country,
          ),
          CountryInfoPanel(country: country)
        ],
      ),
    );
  }
}

class CountryInfoPanel extends StatelessWidget {
  final Country country;

  const CountryInfoPanel({required this.country, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(country.population != null
            ? country.population.toString()
            : 'Unavailable')
      ],
    );
  }
}
