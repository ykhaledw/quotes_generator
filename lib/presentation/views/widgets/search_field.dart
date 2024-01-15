import 'package:flutter/material.dart';
import 'package:quote_generator_app/core/utils/styles.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: TextField(
        cursorColor: const Color(0xff6E6E6E),
        decoration: InputDecoration(
          hintText: 'Type Something Here To Search..',
          hintStyle: Styles.textStyle22,
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(style: BorderStyle.none),
    );
  }
}
