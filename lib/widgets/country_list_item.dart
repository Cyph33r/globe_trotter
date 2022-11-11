import 'package:flutter/material.dart';

import '../models/country.dart';

class CountryListItem extends StatelessWidget {
  final Country country;

  const CountryListItem({required this.country, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  country.flags?.png ?? "",
                  fit: BoxFit.fitHeight,
                  height: 48,
                  width: 48,
                )),
          ],
        ),
      ),
    );
  }
}
