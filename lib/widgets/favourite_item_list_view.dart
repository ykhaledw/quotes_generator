import 'package:flutter/material.dart';
import 'package:quote_generator_app/widgets/favourite_item.dart';

class FavouriteItemListView extends StatelessWidget {
  const FavouriteItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const FavouriteItem();
        },
      ),
    );
  }
}