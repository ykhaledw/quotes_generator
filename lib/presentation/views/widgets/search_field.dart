import 'package:flutter/material.dart';
import 'package:quote_generator_app/core/utils/styles.dart';
import 'package:quote_generator_app/presentation/views/search_view.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return const SearchView();
        }));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(left: 18, top: 18, bottom: 18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: const Text(
          'Type Something Here To Search..',
          style: Styles.textStyle22,
        ),
      ),
    );
  }
}
