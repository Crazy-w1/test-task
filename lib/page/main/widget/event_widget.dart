import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_task/app/const/app_colors.dart';
import 'package:test_task/app/const/app_fonts.dart';

import '../../../app/const/app_icon.dart';

class EventWidget extends StatelessWidget {
  final Color color;
  final String time;
  final String title;
  final String? description;
  final VoidCallback onPressed;

  const EventWidget({
    super.key,
    this.color = AppColors.white,
    required this.time,
    required this.title,
    this.description = "",
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 2,
              height: 50,
              decoration: const BoxDecoration(
                color: AppColors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                ),
              ),
            ),
            const SizedBox(width: 14),
            Text(
              time,
              style: const TextStyle(
                fontSize: 14,
                height: 1.145,
                fontFamily: AppFonts.roboto,
                fontWeight: FontWeight.w400,
                color: AppColors.lightGrey,
              ),
            ),
            const SizedBox(width: 18),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                      height: 1.145,
                      fontFamily: AppFonts.roboto,
                      fontWeight: FontWeight.w400,
                      color: AppColors.lightBlack,
                    ),
                  ),
                  if (description != null && description!.isNotEmpty)
                    Text(
                      description!,
                      style: const TextStyle(
                        fontSize: 12,
                        height: 1.3,
                        fontFamily: AppFonts.roboto,
                        fontWeight: FontWeight.w400,
                        color: AppColors.whiteGrey,
                      ),
                    ),
                ],
              ),
            ),
            IconButton(
                onPressed: onPressed,
                icon: SvgPicture.asset(
                  AssetIcon.go,
                  color: AppColors.lightGrey,
                ),
            )
          ],
        ),
      ),
    );
  }
}