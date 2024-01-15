import 'package:flutter/material.dart';
import 'package:quote_generator_app/presentation/views/widgets/favourite_quotes_button.dart';
import 'package:quote_generator_app/presentation/views/widgets/quotes_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FavouriteQuotesButton(),
          SizedBox(
            height: 10,
          ),
          QuotesView(),
        ],
      ),
    );
  }
}
