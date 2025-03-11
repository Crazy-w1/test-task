import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_task/app/const/app_colors.dart';

import '../app/const/app_fonts.dart';
import '../app/const/app_icon.dart';

class CustomInfoWidget extends StatelessWidget {
  final text;
  final icon;
  final Color color;

  const CustomInfoWidget({
    super.key,
    this.text,
    this.icon,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
          ),
          const SizedBox(width: 8,),
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              color: AppColors.lightBlack,
              fontFamily: AppFonts.roboto,
              fontWeight: FontWeight.w300,
              height: 1.3,
            ),
          ),
        ],
      ),
    );
  }
}
