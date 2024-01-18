import 'package:flutter/material.dart';
import 'package:quote_generator_app/core/utils/styles.dart';

class RemoveFromFavouriteButton extends StatelessWidget {
  const RemoveFromFavouriteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(6), bottomLeft: Radius.circular(6)),
        border: Border.all(
          color: const Color(0xff8249B5),
          width: 2,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.favorite_border,
            color: Color(0xFF8249B5),
            size: 30,
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            'Remove From Favorite',
            style: Styles.textStyle22.copyWith(color: const Color(0xFF8249B5)),
          ),
        ],
      ),
    );
  }
}
