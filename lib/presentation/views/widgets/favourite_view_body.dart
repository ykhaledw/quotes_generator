import 'package:flutter/material.dart';
import 'package:quote_generator_app/presentation/views/widgets/back_to_home_button.dart';

import 'package:quote_generator_app/presentation/views/widgets/favourite_item_list_view.dart';
import 'package:quote_generator_app/presentation/views/widgets/search_field.dart';

class FavouriteViewBody extends StatelessWidget {
  const FavouriteViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: BackToHomeButton(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            SliverToBoxAdapter(child: SearchField()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            FavouriteItemListView(),
          ],
        ),
      ),
    );
  }
}
