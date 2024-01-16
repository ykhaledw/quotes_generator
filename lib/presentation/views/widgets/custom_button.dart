import 'package:flutter/material.dart';
import 'package:quote_generator_app/presentation/views/widgets/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.style,
  });
  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: kButtonColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(6),
            topRight: Radius.circular(6),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: style,
          ),
        ),
      ),
    );
  }
}
