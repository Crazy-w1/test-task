import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_task/app/const/app_colors.dart';

import '../../../app/const/app_fonts.dart';


class FinanceWidget extends StatelessWidget {
  final Color color;
  final money;
  final title;
  final double width;
  final double height;
  final icon;
  const FinanceWidget({
    super.key,
    this.color = AppColors.white,
    this.money,
    this.title,
    required this.width,
    required this.height,
    this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
            ),
            Column(
              children: [
                SizedBox(height: 16,),
                Text(
                  money,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1.145,
                    fontFamily: AppFonts.roboto,
                    fontWeight: FontWeight.w500,
                    color: AppColors.lightBlack,
                  ),
                ),
                SizedBox(height: 8,),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1.145,
                    fontFamily: AppFonts.roboto,
                    fontWeight: FontWeight.w300,
                    color: AppColors.lightBlack,
                  ),
                ),


              ],
            )
          ],
        ),
      ),
    );
  }
}
