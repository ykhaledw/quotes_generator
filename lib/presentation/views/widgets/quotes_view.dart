import 'package:flutter/material.dart';
import 'package:quote_generator_app/core/utils/styles.dart';
import 'package:quote_generator_app/presentation/data/models/quote_model.dart';
import 'package:quote_generator_app/presentation/views/widgets/add_to_favourite_button.dart';
import 'package:quote_generator_app/presentation/views/widgets/generate_another_quote_button.dart';

class QuotesView extends StatelessWidget {
  const QuotesView({
    super.key,
    required this.quote,
  });

  final QuoteModel quote;

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              quote.content ?? '',
              style: Styles.textStyle26,
            ),
            Text(
              quote.author ?? '',
              style: Styles.textStyle22,
            ),
            const SizedBox(
              height: 20,
            ),
             const Row(
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
