import 'package:flutter/material.dart';
import 'package:quote_generator_app/core/utils/styles.dart';
import 'package:quote_generator_app/presentation/views/widgets/add_to_favourite_button.dart';
import 'package:quote_generator_app/presentation/views/widgets/generate_another_quote_button.dart';

class QuotesView extends StatelessWidget {
  const QuotesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
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
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  flex: 2,
                  child: GenerateAnotherQuoteButton(),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: AddToFavouriteButton(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
