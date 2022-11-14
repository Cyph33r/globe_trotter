import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:globe_trotter/providers/country_filters.dart';
import 'package:globe_trotter/util.dart';
import 'package:provider/provider.dart';

import '../data/country_repository.dart';

class FilterPanel extends StatelessWidget {
  const FilterPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [LanguageFilterButton(), GeneralFilterButton()],
    );
  }
}

class GeneralFilterButton extends StatelessWidget {
  const GeneralFilterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CountryFilters filterProvider =
        Provider.of<CountryFilters>(context, listen: false);
    return ElevatedButton.icon(
      icon: SvgPicture.asset(
        "assets/general_filter_icon.svg",
        color: Theme.of(context).iconTheme.color,
      ),
      onPressed: () => showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32), topRight: Radius.circular(32)),
          ),
          builder: (context) => const GeneralFilterModalSheet()),
      style: ButtonStyle(
          alignment: Alignment.centerLeft,
          elevation: const MaterialStatePropertyAll<double>(1),
          padding:
              const MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.all(4)),
          backgroundColor: MaterialStatePropertyAll<Color>(
              Theme.of(context).scaffoldBackgroundColor),
          fixedSize: const MaterialStatePropertyAll<Size>(Size(74, 40))),
      label: Text(
        "Filter",
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(fontWeight: FontWeight.w300),
      ),
    );
  }
}

class LanguageFilterButton extends StatelessWidget {
  const LanguageFilterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CountryFilters filterProvider = Provider.of<CountryFilters>(context);
    return ElevatedButton.icon(
      icon: SvgPicture.asset(
        "assets/language_filter_icon.svg",
        color: Theme.of(context).iconTheme.color,
      ),
      onPressed: () => showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32), topRight: Radius.circular(32)),
          ),
          builder: (context) => const LanguageFilterModalSheet()),
      style: ButtonStyle(
          alignment: Alignment.centerLeft,
          elevation: const MaterialStatePropertyAll<double>(1),
          padding:
              const MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.all(4)),
          backgroundColor: MaterialStatePropertyAll<Color>(
              Theme.of(context).scaffoldBackgroundColor),
          fixedSize: const MaterialStatePropertyAll<Size>(Size(74, 40))),
      label: Text(
        filterProvider.filter.language.name == "all"
            ? "--"
            : filterProvider.filter.language.name,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class GeneralFilterModalSheet extends StatefulWidget {
  const GeneralFilterModalSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<GeneralFilterModalSheet> createState() =>
      _GeneralFilterModalSheetState();
}

class _GeneralFilterModalSheetState extends State<GeneralFilterModalSheet> {
  var showTimeZones = false;

  @override
  Widget build(BuildContext context) {
    final CountryFilters filterProvider = Provider.of<CountryFilters>(context);
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Filter",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Icon(Icons.cancel))
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    const Text(
                      "Region",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: Region.values
                          .map((region) => RegionFilterItem(
                                region: region,
                                filterProvider: filterProvider,
                              ))
                          .toList(),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        showTimeZones = !showTimeZones;
                      }),
                      behavior: HitTestBehavior.opaque,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Timezone",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Icon(showTimeZones
                              ? Icons.expand_less
                              : Icons.expand_more)
                        ],
                      ),
                    ),
                    if (showTimeZones)
                      Column(
                        children: timeZodeCodes
                            .map((timeZoneCode) => TimeZoneFilterItem(
                                  timeZone: timeZoneCode,
                                  filterProvider: filterProvider,
                                ))
                            .toList(),
                      )
                  ]),
            ),
          )
        ],
      ),
    );
  }
}

class LanguageFilterModalSheet extends StatelessWidget {
  final languageFilterList = const {
    "all": "All",
    "ara": "بالعربية",
    "eng": "English",
    "spa": "Español",
    "fra": "Française",
    "hin": "বাঙ্গালী",
    "ita": "Italiano",
    "msa": "Bahasa",
    "nld": "Deutsch",
    "por": "Português",
    "rus": "Pу́сский",
    "swe": "Svenska",
    "tur": "Türkçe",
    "zho": "普通话",
  };

  const LanguageFilterModalSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Languages",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView(
              children: [
                ...languageFilterList.entries
                    .map((language) => LanguageFilterItem(languageCode: {
                          "iso_code": language.key,
                          "language": language.value
                        }))
                    .toList()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RegionFilterItem extends StatelessWidget {
  final Region region;
  final CountryFilters filterProvider;

  void updateRegion() {
    final toShow = filterProvider.filter.regions;
    var isFiltering = filterProvider.filter.regions.contains(region);

    if (isFiltering == true) {
      toShow.removeWhere((region) => region == this.region);
      filterProvider.editFilter(region: toShow);
    } else {
      toShow.add(region);
      filterProvider.editFilter(region: toShow);
    }
  }

  const RegionFilterItem(
      {required this.region, required this.filterProvider, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CountryFilters filterProvider = Provider.of<CountryFilters>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => updateRegion(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              region.name,
              textAlign: TextAlign.start,
            ),
            Checkbox(
                value: filterProvider.filter.regions.contains(region),
                onChanged: (newValue) => updateRegion())
          ],
        ),
      ),
    );
  }
}

class TimeZoneFilterItem extends StatelessWidget {
  final String timeZone;
  final CountryFilters filterProvider;

  void updateTimeZone() {
    final toShow = filterProvider.filter.timeZones;
    var isFiltering = filterProvider.filter.timeZones.contains(timeZone);

    if (isFiltering == true) {
      toShow.removeWhere((timeZone) => timeZone == this.timeZone);
      filterProvider.editFilter(timeZone: toShow);
    } else {
      toShow.add(timeZone);
      filterProvider.editFilter(timeZone: toShow);
    }
  }

  const TimeZoneFilterItem(
      {required this.timeZone, required this.filterProvider, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CountryFilters filterProvider = Provider.of<CountryFilters>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => updateTimeZone(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              timeZone,
              textAlign: TextAlign.start,
            ),
            Checkbox(
                value: filterProvider.filter.timeZones.contains(timeZone),
                onChanged: (newValue) => updateTimeZone())
          ],
        ),
      ),
    );
  }
}

class LanguageFilterItem extends StatelessWidget {
  final Map<String, String> languageCode;

  const LanguageFilterItem({required this.languageCode, Key? key})
      : super(key: key);

  void updateFilter(BuildContext context, CountryFilters filterProvider) {
    Navigator.of(context).pop();
    return filterProvider.editFilter(
        language: FilterLanguages.values.firstWhere(
            (language) => language.name == languageCode["iso_code"]));
  }

  @override
  Widget build(BuildContext context) {
    final CountryFilters filterProvider =
        Provider.of<CountryFilters>(context, listen: false);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => updateFilter(context, filterProvider),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              languageCode["language"]!,
              style: const TextStyle(fontSize: 16),
            ),
            Radio<String>(
                value: languageCode["iso_code"]!,
                groupValue: filterProvider.filter.language.name,
                onChanged: (languageCode) =>
                    updateFilter(context, filterProvider)),
          ],
        ),
      ),
    );
  }
}
