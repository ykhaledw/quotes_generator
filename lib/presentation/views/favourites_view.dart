import 'package:flutter/material.dart';
import 'package:quote_generator_app/constants.dart';
import 'package:quote_generator_app/presentation/views/home_view.dart';
import 'package:quote_generator_app/presentation/views/widgets/back_to_home_button.dart';
import 'package:quote_generator_app/presentation/views/widgets/favourite_item_list_view.dart';
import 'package:quote_generator_app/presentation/views/widgets/search_field.dart';

class FavouritesView extends StatelessWidget {
  const FavouritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            BackToHomeButton(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const HomeView();
                }));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const SearchField(),
            const SizedBox(
              height: 10,
            ),
            const FavouriteItemListView(),
          ],
        ),
      ),
    );
  }
}
