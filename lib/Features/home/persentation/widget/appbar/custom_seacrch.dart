import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.center,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search...', // Add placehaolder text
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
          filled: true,
          fillColor: Colors.white,

          suffixIcon: IconButton(
            icon: const Icon(
              FontAwesomeIcons.barcode,
              weight: 1,
              size: 12,
            ), // Change the search icon
            onPressed: () {
              // Add functionality for search
            },
          ),
        ),
      ),
    );
  }
}
