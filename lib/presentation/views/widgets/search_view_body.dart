import 'package:flutter/material.dart';
import 'package:quote_generator_app/presentation/views/widgets/back_to_home_button.dart';
import 'package:quote_generator_app/presentation/views/widgets/favourite_item.dart';
import 'package:quote_generator_app/presentation/views/widgets/favourite_search_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            BackToHomeButton(),
            SizedBox(
              height: 10,
            ),
            FavouriteSearchField(),
            SizedBox(
              height: 10,
            ),
            FavouriteItem(),
          ],
        ),
      ),
    );
  }
}
