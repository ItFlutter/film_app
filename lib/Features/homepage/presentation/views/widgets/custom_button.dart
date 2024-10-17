import 'package:film_app/Features/homepage/presentation/views/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final Color? color;
  final Color? textColor;
  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.color,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color,
      child: CustomText(
        text: text,
        color: textColor,
      ),
    );
  }
}
