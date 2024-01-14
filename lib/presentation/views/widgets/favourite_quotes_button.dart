import 'package:flutter/material.dart';
import 'package:quote_generator_app/presentation/views/widgets/custom_button.dart';

class FavouriteQuotesButton extends StatelessWidget {
  const FavouriteQuotesButton({
    super.key, this.onTap,
  });

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 17,
              ),
              child: const CustomButton(
                text: 'Click Here To View Favourite Quotes',
              ),
            ),
            const IntrinsicHeight(
              child: CircleAvatar(
                radius: 16,
                backgroundColor: Color(0xff323232),
                child: Text(
                  '2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Changa',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
