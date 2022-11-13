import 'package:flutter/material.dart';
import 'package:globe_trotter/providers/filter_provider.dart';
import 'package:provider/provider.dart';

import '../data/country_repository.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController _searchFieldController = TextEditingController();

  SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FilterProvider currentFilter =
        Provider.of<FilterProvider>(context);
    return Container(
      height: 48,
      width: 360,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.15),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          const SizedBox(
            width: 4,
          ),
          const Icon(Icons.search),
          const SizedBox(
            width: 8,
          ),
          Expanded(
              child: TextField(
                  decoration: const InputDecoration(
                      hintText: "Search Country", border: InputBorder.none),
                  controller: _searchFieldController,
                  onChanged: (value) {}))
        ],
      ),
    );
  }
}
