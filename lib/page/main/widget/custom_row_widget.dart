import 'package:flutter/material.dart';
import 'package:test_task/app/const/app_colors.dart';
import 'package:test_task/app/const/app_fonts.dart';

class CustomRow extends StatelessWidget {
  final firstText;
  final secondText;
  const CustomRow({
    super.key,
    this.firstText,
    this.secondText
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4),
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            firstText,
            style: const TextStyle(
              fontSize: 14,
              color: AppColors.lightBlack,
              fontFamily: AppFonts.roboto,
              fontWeight: FontWeight.w300,
              height: 1.145,
            ),
          ),
          Text(
            secondText,
            style: const TextStyle(
              fontSize: 14,
              color: AppColors.lightBlack,
              fontFamily: AppFonts.roboto,
              fontWeight: FontWeight.w300,
              height: 1.145,
            ),
          ),


        ],
      ),
    );
  }
}
