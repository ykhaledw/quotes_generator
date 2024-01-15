import 'package:flutter/material.dart';
import 'package:quote_generator_app/core/utils/styles.dart';
import 'package:quote_generator_app/presentation/views/widgets/custom_button.dart';

class FavouriteQuotesButton extends StatelessWidget {
  const FavouriteQuotesButton({
    super.key,
    this.onTap,
  });

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.only(
            top: 17,
          ),
          child: const CustomButton(
            text: 'Click Here To View Favourite Quotes',
            style: Styles.textStyle26,
          ),
        ),
      ),
    );
  }
}
