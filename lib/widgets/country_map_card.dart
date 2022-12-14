import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../models/country.dart';

class CountryMapCard extends StatefulWidget {
  final Country country;

  const CountryMapCard({required this.country, Key? key}) : super(key: key);

  @override
  State<CountryMapCard> createState() => _CountryMapCardState();
}

class _CountryMapCardState extends State<CountryMapCard> {
  bool displayFlag = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 160,
        width: 320,
        child: LayoutBuilder(builder: (context, constraints) {
          return Stack(
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: displayFlag
                        ? widget.country.flags?.png ?? ""
                        : widget.country.coatOfArms?.png ?? "",
                    errorWidget: (context, object, stacktrace) {
                      if (object is ArgumentError) {
                        return Center(
                          child: SizedBox(
                            width: 200,
                            child: Text(
                              "Could not find ${displayFlag ? "Flag" : "Coat of Arms"} image for ${widget.country.name!.common}",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      }
                      return const Center(
                          child: Text("Can't load Image: Bad Network"));
                    },
                    progressIndicatorBuilder: (BuildContext context,
                        String child, DownloadProgress loadingProgress) {
                      return Center(
                        child: CircularProgressIndicator(
                            value: loadingProgress.progress),
                      );
                    },
                    height: 160,
                    width: 320,
                  ),
                ),
              ),
              InkWell(
                  onTap: () => setState(() {
                        displayFlag = !displayFlag;
                      }),
                  child: const ArrowButton(direction: VerticalDirection.down)),
              InkWell(
                  onTap: () => setState(() {
                        displayFlag = !displayFlag;
                      }),
                  child: const ArrowButton(direction: VerticalDirection.up))
            ],
          );
        }),
      ),
    );
  }
}

class ArrowButton extends StatelessWidget {
  final VerticalDirection direction;

  const ArrowButton({
    required this.direction,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: direction == VerticalDirection.up
            ? Alignment.centerLeft
            : Alignment.centerRight,
        child: Container(
          padding: const EdgeInsets.all(8),
          margin: direction == VerticalDirection.up
              ? const EdgeInsets.only(left: 4)
              : const EdgeInsets.only(right: 4),
          decoration: const BoxDecoration(
              color: Colors.black54, shape: BoxShape.circle),
          child: Icon(
            direction == VerticalDirection.up
                ? Icons.arrow_back_ios
                : Icons.arrow_forward_ios,
            color: Colors.blue,
            size: 20,
          ),
        ));
  }
}
