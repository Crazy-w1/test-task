import 'package:flutter/material.dart';
import 'package:test_task/app/const/app_colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final bool isFilled;
  final Color borderColor;
  final Color backgroundColor;
  final Color textColor;
  final FontWeight fontWeight;
  final double textSize;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isFilled = false,
    this.borderColor = AppColors.blue,
    this.backgroundColor = Colors.transparent,
    this.textColor = AppColors.blue,
    this.fontWeight = FontWeight.w300,
    this.textSize = 12,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Кнопка занимает всю доступную ширину
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: textColor,
          backgroundColor: backgroundColor,
          side: isFilled ? null : BorderSide(color: borderColor, width: 1),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(vertical: 8),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: textSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
