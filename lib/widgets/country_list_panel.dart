import 'package:flutter/material.dart';
import 'package:collection/collection.dart' show groupBy;
import 'package:provider/provider.dart';
import '../data/country_repository.dart';
import '../models/country.dart';
import '../providers/filter_provider.dart';
import '../screens/country_info_screen.dart';

class CountryListPanel extends StatelessWidget {
  CountryListPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CountryFilter currentFilter =
        Provider.of<FilterProvider>(context,listen: false).filter;
    final Map<String, List<Country>> countriesGrouped = groupBy(
        CountryRepository.getCountriesToDisplay(currentFilter),
        (country) => country.name?.common![0] ?? "??");
    return ListView.builder(
        itemCount: countriesGrouped.length,
        itemBuilder: (context, itemIndex) {
          return CountryListAlphaPanel(
            startsWith: countriesGrouped.keys.elementAt(itemIndex),
            countries: countriesGrouped.values.elementAt(itemIndex),
            // key: ValueKey(country.id),
          );
        });
  }
}

class CountryListAlphaPanel extends StatelessWidget {
  final List<Country> countries;
  final String startsWith;

  CountryListAlphaPanel(
      {required this.startsWith, required this.countries, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          startsWith,
          style: const TextStyle(color: Color(0xFF667085)),
        ),
        const SizedBox(
          height: 10,
        ),
        ...countries
            .map((country) => CountryListItem(country: country))
            .toList(growable: false)
      ],
    );
  }
}

class CountryListItem extends StatelessWidget {
  final Country country;
  final capitalTextColor = const TextStyle(color: Color(0xFF667085));

  const CountryListItem({required this.country, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context)
          .pushNamed(CountryInfoScreen.routeName, arguments: country.id),
      child: Container(
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  country.flags?.png ?? "",
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!.toDouble()
                            : null,
                      ),
                    );
                  },
                  fit: BoxFit.fitHeight,
                  height: 48,
                  width: 48,
                )),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  country.name?.common ?? "Unknown",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                const SizedBox(
                  height: 2,
                ),
                country.capital == null || country.capital!.isEmpty
                    ? Text(
                        "No Capital",
                        style: capitalTextColor,
                        overflow: TextOverflow.ellipsis,
                      )
                    : Text(
                        country.capital!.first,
                        style: capitalTextColor,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      )
              ],
            )
          ],
        ),
      ),
    );
  }
}
