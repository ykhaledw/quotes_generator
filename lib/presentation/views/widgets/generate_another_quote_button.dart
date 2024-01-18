import 'package:flutter/material.dart';
import 'package:quote_generator_app/core/utils/styles.dart';

class GenerateAnotherQuoteButton extends StatelessWidget {
  const GenerateAnotherQuoteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 16),
      decoration: const BoxDecoration(
        color: Color(0xff8249B5),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(5),
        ),
      ),
      child: const Center(
        child: Text(
          'Generate Another Quote',
          style: Styles.textStyle20,
        ),
      ),
    );
  }
}
