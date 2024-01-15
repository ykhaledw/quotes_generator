import 'package:flutter/material.dart';

class AddToFavouriteButton extends StatelessWidget {
  const AddToFavouriteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(vertical: 8, horizontal: 34),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(6)),
        border: Border.all(
          color: const Color(0xff8249B5),
          width: 2,
        ),
      ),
      child: const Icon(
        Icons.favorite,
        color: Color(0xff8249B5),
        size: 36,
      ),
    );
  }
}