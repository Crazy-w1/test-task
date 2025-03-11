import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:test_task/app/const/app_colors.dart';

import '../../../app/const/app_fonts.dart';
import '../../../store/progress/progress_store.dart';

class ProgressWidget extends StatelessWidget {
  final double width;
  final double height;
  final ProgressStore store;
  final String title;
  final Color backgroundColor;
  final Color loadingColor;

  const ProgressWidget({
    super.key,
    required this.width,
    required this.height,
    required this.store,
    required this.title,
    required this.backgroundColor,
    required this.loadingColor,
  });

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              // Анимируем плавное заполнение
              AnimatedContainer(
                duration: Duration(milliseconds: 800),
                curve: Curves.easeOutQuad,
                width: width,
                height: height * (store.progress / 100),
                decoration: BoxDecoration(
                  color: loadingColor,
                  borderRadius: BorderRadius.circular(10), // Закругление со всех сторон
                ),
              ),
              // Анимированное число (от 0 до store.progress)
              Positioned(
                top: 16,
                left: 16,
                child: TweenAnimationBuilder<int>(
                  duration: const Duration(seconds: 1),
                  tween: IntTween(begin: 0, end: store.progress),
                  builder: (context, value, child) {
                    return Text(
                      "$value%",
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: AppColors.lightBlack,
                      ),
                    );
                  },
                ),
              ),
              // Текст с описанием внизу
              Positioned(
                bottom: 16,
                left: 16,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    color: AppColors.lightBlack,
                    fontFamily: AppFonts.roboto,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
