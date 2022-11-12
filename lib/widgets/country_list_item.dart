import 'package:flutter/material.dart';

import '../models/country.dart';
import '../screens/country_info_screen.dart';

class CountryListItem extends StatelessWidget {
  final Country country;
  final capitalTextColor = const TextStyle(color: Color(0xFF667085));

  const CountryListItem({required this.country, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>Navigator.of(context).pushNamed(CountryInfoScreen.routeName,arguments: country.id),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                        )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
