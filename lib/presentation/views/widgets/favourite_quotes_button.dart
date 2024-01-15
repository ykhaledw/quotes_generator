import 'package:flutter/material.dart';
import 'package:quote_generator_app/core/utils/styles.dart';
import 'package:quote_generator_app/presentation/views/favourites_view.dart';
import 'package:quote_generator_app/presentation/views/widgets/custom_button.dart';

class FavouriteQuotesButton extends StatelessWidget {
  const FavouriteQuotesButton({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return const FavouritesView();
              }));
            },
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
