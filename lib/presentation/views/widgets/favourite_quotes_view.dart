import 'package:flutter/material.dart';
import 'package:quote_generator_app/presentation/views/widgets/constants.dart';

class FavouriteQuotesView extends StatelessWidget {
  const FavouriteQuotesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      padding: const EdgeInsets.all(2),
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(5),
          bottomLeft: Radius.circular(5),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 6,
          horizontal: 25,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(5),
            bottomLeft: Radius.circular(5),
          ),
        ),
        child: const Row(
          children: [
            Spacer(
              flex: 10,
            ),
            Icon(
              Icons.favorite_outline,
              color: Color(0xff8249B5),
              size: 35,
            ),
            Spacer(),
            Text(
              'Remove From Favourites',
              style: TextStyle(
                color: Color(0xff8249B5),
                fontSize: 24,
              ),
            ),
            Spacer(
              flex: 10,
            ),
          ],
        ),
      ),
    );
  }
}
