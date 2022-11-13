import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:globe_trotter/providers/filter_provider.dart';
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
    final FilterProvider currentFilter =
        Provider.of<FilterProvider>(context, listen: false);
    return ElevatedButton.icon(
      icon: SvgPicture.asset(
        "assets/general_filter_icon.svg",
        color: Theme.of(context).iconTheme.color,
      ),
      onPressed: () {},
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
    final FilterProvider currentFilter = Provider.of<FilterProvider>(context);
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
          builder: (context) => const LanguageFilterList()),
      style: ButtonStyle(
          alignment: Alignment.centerLeft,
          elevation: const MaterialStatePropertyAll<double>(1),
          padding:
              const MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.all(4)),
          backgroundColor: MaterialStatePropertyAll<Color>(
              Theme.of(context).scaffoldBackgroundColor),
          fixedSize: const MaterialStatePropertyAll<Size>(Size(74, 40))),
      label: Text(
        currentFilter.filter.language.name == "none"
            ? "--"
            : currentFilter.filter.language.name,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class LanguageFilterList extends StatelessWidget {
  final languageFilterList = const {
    "none": "None",
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

  const LanguageFilterList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FilterProvider filterProvider =
        Provider.of<FilterProvider>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.all(16.0),
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
                    .map((language) => LanguageFilterItem(
                            languageCode: {
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

class LanguageFilterItem extends StatelessWidget {
  final Map<String, String> languageCode;

  const LanguageFilterItem({required this.languageCode, Key? key})
      : super(key: key);

  void updateFilter(FilterProvider filterProvider) {
    return filterProvider.editFilter(
        language: FilterLanguages.values.firstWhere(
            (language) => language.name == languageCode["iso_code"]));
  }

  @override
  Widget build(BuildContext context) {
    final FilterProvider filterProvider = Provider.of<FilterProvider>(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => updateFilter(filterProvider),
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
                onChanged: (languageCode) => updateFilter(filterProvider)),
          ],
        ),
      ),
    );
  }
}
