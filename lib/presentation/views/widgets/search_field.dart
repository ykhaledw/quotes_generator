import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(left: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: const TextField(
          cursorColor: Color(0xff323232),
          decoration: InputDecoration(
            hintText: 'Type Something Here To Search..',
            hintStyle: TextStyle(fontSize: 24),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(style: BorderStyle.none),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(style: BorderStyle.none),
            ),
          ),
        ),
      ),
    );
  }
}