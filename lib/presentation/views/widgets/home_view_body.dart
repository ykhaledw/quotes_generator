import 'package:flutter/material.dart';
import 'package:quote_generator_app/presentation/data/models/quote_model.dart';
import 'package:quote_generator_app/presentation/views/widgets/favourite_quotes_button.dart';
import 'package:quote_generator_app/presentation/views/widgets/quotes_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  QuoteModel quote = QuoteModel();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const FavouriteQuotesButton(),
          const SizedBox(
            height: 10,
          ),
          QuotesView(quote: quote),
        ],
      ),
    );
  }
}
