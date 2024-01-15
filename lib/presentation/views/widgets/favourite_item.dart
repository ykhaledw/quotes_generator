import 'package:flutter/material.dart';
import 'package:quote_generator_app/core/utils/styles.dart';
import 'package:quote_generator_app/presentation/views/widgets/remove_from_favourite_button.dart';

class FavouriteItem extends StatelessWidget {
  const FavouriteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '“All I required to be happy was friendship and people I could admire.”',
              style: Styles.textStyle26,
            ),
            Text(
              'Christian Dior',
              style: Styles.textStyle22,
            ),
            SizedBox(
              height: 20,
            ),
            RemoveFromFavouriteButton(),
          ],
        ),
      ),
    );
  }
}
