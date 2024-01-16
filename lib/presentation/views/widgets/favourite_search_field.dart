
import 'package:flutter/material.dart';
import 'package:quote_generator_app/core/utils/styles.dart';

class FavouriteSearchField extends StatefulWidget {
  const FavouriteSearchField({super.key});

  @override
  State<FavouriteSearchField> createState() => _FavouriteSearchFieldState();
}

class _FavouriteSearchFieldState extends State<FavouriteSearchField> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: TextField(
        controller: searchController,
        cursorColor: const Color(0xB2323232),
        style: Styles.textStyle22.copyWith(color: Colors.black),
        decoration: InputDecoration(
          hintText: 'Type Something Here To Search..',
          hintStyle: Styles.textStyle22,
          border: buildBorder(),
          focusedBorder: buildBorder(),
          contentPadding: const EdgeInsets.all(18),
          suffixIcon: IconButton(
            onPressed: () {
              searchController.clear();
            },
            icon: const Icon(
              Icons.cancel_outlined,
              color: Color(0xff808194),
              size: 27,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide.none,
    );
  }
}
