import 'package:flutter/material.dart';
import 'package:collection/collection.dart' show groupBy;
import 'package:globe_trotter/util.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../data/country_repository.dart';
import '../models/country.dart';
import '../providers/country_filters.dart';
import '../screens/country_info_screen.dart';

class CountryListPanel extends StatelessWidget {
  const CountryListPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CountryFilter currentFilter =
        Provider.of<CountryFilters>(context, listen: false).filter;
    final Map<String, List<Country>> countriesGrouped = groupBy(
        CountryRepository.getCountriesToDisplay(currentFilter),
        (country) => country.name?.common![0] ?? "??");
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
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

  const CountryListAlphaPanel(
      {required this.startsWith, required this.countries, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
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
    return Flexible(
      fit: FlexFit.loose,
      child: InkWell(
        onTap: () => Navigator.of(context)
            .pushNamed(CountryInfoScreen.routeName, arguments: country.id),
        child: Container(
          margin: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: country.flags?.png ?? "",
                    errorWidget: (context, object, stacktrace) {
                      if (object is ArgumentError) {
                        return Center(
                          child: SizedBox(
                            width: 200,
                            child: Text(
                              "Could not find flag image for ${country.name!.common}",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      }
                      return const Center(
                          child: Text(
                        "Can't load Image: Bad Network",
                        textAlign: TextAlign.center,
                      ));
                    },
                    progressIndicatorBuilder: (BuildContext context, String url,
                        DownloadProgress loadingProgress) {
                      return Center(
                        child: SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            value: loadingProgress.progress,
                          ),
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
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      // width: 260,
                      child: Text(
                        country.name?.common ?? "Unknown",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
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
                            country.capital!.stringify(separator: ", "),
                            style: capitalTextColor,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
