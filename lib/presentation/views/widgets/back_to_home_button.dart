import 'package:flutter/material.dart';
import 'package:quote_generator_app/presentation/views/widgets/constants.dart';
import 'package:quote_generator_app/core/utils/styles.dart';
import 'package:quote_generator_app/presentation/views/home_view.dart';

class BackToHomeButton extends StatelessWidget {
  const BackToHomeButton({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const HomeView();
                }));
              },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 60),
        decoration: BoxDecoration(
          color: kButtonColor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.arrow_back_ios),
            Text(
              'Back To Home Screen',
              style: Styles.textStyle26,
            ),
          ],
        ),
      ),
    );
  }
}
