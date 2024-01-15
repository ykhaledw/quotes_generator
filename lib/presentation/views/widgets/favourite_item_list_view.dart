import 'package:flutter/material.dart';
import 'package:quote_generator_app/presentation/views/widgets/favourite_item.dart';

class FavouriteItemListView extends StatelessWidget {
  const FavouriteItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
        return const FavouriteItem();
      },
      childCount: 5,
      ),
    );
  }
}
