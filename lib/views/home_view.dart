import 'package:flutter/material.dart';
import 'package:quote_generator_app/constants.dart';
import 'package:quote_generator_app/views/favourites_view.dart';
import 'package:quote_generator_app/widgets/favourite_quotes_button.dart';
import 'package:quote_generator_app/widgets/quotes_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 14,
            ),
            FavouriteQuotesButton(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const FavouritesView();
                }));
              },
            ),
            const Spacer(
              flex: 1,
            ),
            const QuotesView(),
            const Spacer(
              flex: 14,
            ),
          ],
        ),
      ),
    );
  }
}
