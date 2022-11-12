import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/country_repository.dart';
import '../widgets/country_map_card.dart';
import '../models/country.dart';
import '../util.dart' show StringUtil, ListUtil;

//todo:ensure that it nothing overflows
class CountryInfoScreen extends StatelessWidget {
  const CountryInfoScreen({Key? key}) : super(key: key);
  static const routeName = '/country_info_screen';

  @override
  Widget build(BuildContext context) {
    final countryCode = ModalRoute.of(context)!.settings.arguments as int;
    final country = CountryRepository.getAllCountries[countryCode]!;

    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text(country.name?.common ?? "Unknown"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          CountryMapCard(
            country: country,
          ),
          Expanded(
              child: SingleChildScrollView(
                  child: CountryInfoPanel(country: country)))
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CountryInfoItem(
            tag: 'Population',
            info: country.population != null
                ? country.population.toString()
                : 'Unavailable',
          ),
          const SizedBox(
            height: 4,
          ),
          CountryInfoItem(tag: "Region", info: country.region ?? "Unavailable"),
          const SizedBox(
            height: 4,
          ),
          CountryInfoItem(
              tag: "Capital",
              info: country.capital == null || country.capital!.isEmpty
                  ? "No Capital"
                  : country.capital!.first),
          const SizedBox(
            height: 24,
          ),

          CountryInfoItem(
              tag: "Official languages",
              info: country.languages?.languages?.stringify(separator: ", ") ??
                  "Unknown"),
          const SizedBox(
            height: 24,
          ),
          CountryInfoItem(
              tag: "Independent",
              info: country.independent != null
                  ? country.independent!
                      ? "Yes"
                      : "No"
                  : "Unknown"),
          const SizedBox(
            height: 4,
          ),
          CountryInfoItem(
              tag: "Area", info: "${country.area!.toStringAsFixed(2)} km²"),
          const SizedBox(
            height: 4,
          ),
          CountryInfoItem(
              tag: "Currencies",
              info: country.currencies?.currencies?.first.name ?? "Unknown"),
          //todo:include all with symbol
          const SizedBox(
            height: 24,
          ),
          CountryInfoItem(
              tag: "Time zones",
              info: country.timezones?.stringify(separator: ", ") ?? "Unknown"),
          const SizedBox(
            height: 4,
          ),
          const SizedBox(
            height: 4,
          ),
          CountryInfoItem(
              tag: "Calling Code",
              info: country.dialingCode != null
                  ? country.dialingCode!.codes.stringify(separator: ", ")
                  : "Unknown"),
          const SizedBox(
            height: 4,
          ),
          //todo:get idd
          CountryInfoItem(
              tag: "Driving side", info: country.car!.side!.toTitleCase())
        ],
      ),
    );
  }
}

class CountryInfoItem extends StatelessWidget {
  final String tag;
  final String info;

  const CountryInfoItem({required this.tag, required this.info, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("$tag:",
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontSize: 16, fontWeight: FontWeight.bold)),
      const SizedBox(width: 8),
      Expanded(
        child: Text(info,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w100)),
      ),
    ]);
  }
}
