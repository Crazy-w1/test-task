import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../app/const/app_colors.dart';
import '../store/settings/settings_store.dart';

class CustomToggleButton extends StatelessWidget {
  final SettingsStore store;
  final String leftText;
  final String rightText;
  final Color toggleColor;

  const CustomToggleButton({
    super.key,
    required this.store,
    required this.leftText,
    required this.rightText,
    required this.toggleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Container(
        decoration: BoxDecoration(
          border: Border.all(color: toggleColor, width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  store.toggleDecimal(true);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    color: store.decimalToggle ? toggleColor : AppColors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      leftText,
                      style: TextStyle(
                        color: store.decimalToggle ? AppColors.white : toggleColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  store.toggleDecimal(false);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    color: store.decimalToggle ? AppColors.white : toggleColor,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      rightText,
                      style: TextStyle(
                        color: store.decimalToggle ? toggleColor : AppColors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}