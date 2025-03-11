import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_task/widget/button_widget.dart';
import 'package:test_task/widget/info_widget.dart';
import 'package:test_task/widget/toggle_button.dart';
import '../../app/const/app_colors.dart';
import '../../app/const/app_fonts.dart';
import '../../app/const/app_icon.dart';
import '../../store/settings/settings_store.dart';
import '../custom_text_field.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsBottomSheet extends StatelessWidget {
  final SettingsStore store;

  const SettingsBottomSheet({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.9,
      minChildSize: 0.65,
      maxChildSize: 0.9,
      expand: false,
      builder: (_, controller) {
        return Column(
          children: [
            Padding(padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.loadingButton,
                    style: const TextStyle(
                      fontSize: 24,
                      color: AppColors.lightBlack,
                      fontFamily: AppFonts.roboto,
                      fontWeight: FontWeight.w700,
                      height: 1.3,
                    ),
                  ),
                  IconButton(
                    icon: SvgPicture.asset(
                      AssetIcon.close,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                controller: controller,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Observer(
                    builder: (_) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInfoWidget(
                          color: AppColors.lightGreen,
                          icon: AssetIcon.check,
                          text: AppLocalizations.of(context)!.bottomChanges + "12.07.2021, 12:30" +
                          AppLocalizations.of(context)!.bottomChangesSuccessfully
                          ,
                        ),
                        SizedBox(height: 24,),
                        Text(
                          AppLocalizations.of(context)!.bottomDecimalposition,
                          style: const TextStyle(
                            fontSize: 16,
                            color: AppColors.lightBlack,
                            fontFamily: AppFonts.roboto,
                            fontWeight: FontWeight.w500,
                            height: 1.3,
                          ),
                        ),
                        const SizedBox(height: 8,),
                        Row(
                          children: [
                            Expanded(
                              child: CustomTextField(
                                controller: TextEditingController(),
                                hint: AppLocalizations.of(context)!.bottomCash,
                                isValid: true,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: CustomTextField(
                                controller: TextEditingController(),
                                hint: AppLocalizations.of(context)!.bottomCashless,
                                isValid: true,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24,),
                        Text(
                          AppLocalizations.of(context)!.bottomScaleFactor,
                          style: const TextStyle(
                            fontSize: 16,
                            color: AppColors.lightBlack,
                            fontFamily: AppFonts.roboto,
                            fontWeight: FontWeight.w500,
                            height: 1.3,
                          ),
                        ),
                        const SizedBox(height: 8,),
                        Row(
                          children: [
                            Expanded(
                              child: CustomTextField(
                                controller: TextEditingController(),
                                hint: AppLocalizations.of(context)!.bottomCash,
                                isValid: true,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: CustomTextField(
                                controller: TextEditingController(),
                                hint: AppLocalizations.of(context)!.bottomCashless,
                                isValid: true,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Checkbox(
                              value: store.soundEnabled,
                              onChanged: (value) => store.setSoundEnabled(value),
                            ),
                            Text(
                              AppLocalizations.of(context)!.turnOnSound,
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
                        Text(
                          AppLocalizations.of(context)!.bottomMasterMode,
                          style: const TextStyle(
                            fontSize: 16,
                            color: AppColors.lightBlack,
                            fontFamily: AppFonts.roboto,
                            fontWeight: FontWeight.w500,
                            height: 1.3,
                          ),
                        ),
                        const SizedBox(height: 16,),
                        CustomToggleButton(
                            store: store,
                            leftText: AppLocalizations.of(context)!.isUsed,
                            rightText: AppLocalizations.of(context)!.notUsed,
                            toggleColor: AppColors.blue
                        ),
                        const SizedBox(height: 24,),
                        Text(
                          AppLocalizations.of(context)!.priceLists,
                          style: const TextStyle(
                            fontSize: 16,
                            color: AppColors.lightBlack,
                            fontFamily: AppFonts.roboto,
                            fontWeight: FontWeight.w500,
                            height: 1.3,
                          ),
                        ),
                        const SizedBox(height: 8,),
                        Text(
                          AppLocalizations.of(context)!.lastSyncModem,
                          style: const TextStyle(
                            fontSize: 14,
                            color: AppColors.lightBlack,
                            fontFamily: AppFonts.roboto,
                            fontWeight: FontWeight.w300,
                            height: 1.145,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const Text(
                              "#",
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.grey,
                                fontFamily: AppFonts.roboto,
                                fontWeight: FontWeight.w300,
                                height: 1.145,
                              ),
                            ),
                            SizedBox(width: 63,),
                            Text(
                              AppLocalizations.of(context)!.price,
                              style: const TextStyle(
                                fontSize: 14,
                                color: AppColors.grey,
                                fontFamily: AppFonts.roboto,
                                fontWeight: FontWeight.w300,
                                height: 1.145,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        ...store.priceList.asMap().entries.map((entry) {
                          int index = entry.key;
                          Map<String, TextEditingController> row = entry.value;
                          return Padding(padding: const EdgeInsets.only(bottom: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                SizedBox(width: 56,
                                  child: CustomTextField(
                                    controller: row['number']!,
                                    onChanged: (value) => row['number']!.text = value,
                                    isValid: true,
                                  ),
                                ),
                                const SizedBox(width: 16),
                                SizedBox(
                                  width: 104,
                                  child: CustomTextField(
                                    controller: row['price']!,
                                    onChanged: (value) => row['price']!.text = value,
                                    isValid: true,
                                  ),
                                ),
                              ],),
                              IconButton(
                                icon: SvgPicture.asset(
                                  AssetIcon.redCloseButton,
                                ),
                                onPressed: () => store.removePriceRow(index),
                              ),
                            ],
                          ),);
                        }),
                        CustomButton
                          (onPressed: store.addPriceRow,
                            backgroundColor: AppColors.white,
                            text: AppLocalizations.of(context)!.addLine
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              child:
              CustomButton(
                  onPressed: (){},
                  text: AppLocalizations.of(context)!.saveChanges,
                backgroundColor: AppColors.blue,
                textColor: AppColors.white,
                textSize: 16,
                fontWeight: FontWeight.w500,
              )


            ),
            SizedBox(height: MediaQuery.of(context).padding.bottom + 28)
          ],
        );
      },
    );
  }
}