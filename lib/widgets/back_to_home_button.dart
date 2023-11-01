import 'package:flutter/material.dart';
import 'package:quote_generator_app/constants.dart';

class BackToHomeButton extends StatelessWidget {
  const BackToHomeButton({
    super.key, this.onTap,
  });

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: IntrinsicHeight(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: kButtonColor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 10,
              ),
              Icon(Icons.arrow_back_ios),
              Spacer(),
              Text(
                'Back To Home Screen',
                style: TextStyle(fontSize: 26),
              ),
              Spacer(
                flex: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}