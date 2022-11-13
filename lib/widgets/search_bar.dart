import 'package:flutter/material.dart';
import 'package:globe_trotter/providers/filter_provider.dart';
import 'package:provider/provider.dart';

import '../data/country_repository.dart';

class SearchBar extends StatefulWidget {

  SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final FilterProvider filterProvider =
        Provider.of<FilterProvider>(context, listen: false);
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
                  onChanged: (value) {
                    filterProvider.editFilter(
                        prefix: value);
                  }))
        ],
      ),
    );
  }
}
