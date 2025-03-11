import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_task/page/main/widget/atm_widget.dart';
import 'package:test_task/page/main/widget/event_widget.dart';
import 'package:test_task/page/main/widget/progress_widget.dart';
import 'package:test_task/store/settings/settings_store.dart';
import 'package:test_task/widget/button_widget.dart';

import '../../app/const/app_colors.dart';
import '../../app/const/app_fonts.dart';
import '../../app/const/app_icon.dart';
import '../../store/progress/progress_store.dart';
import '../../widget/bottom_sheet/bottom_sheet.dart';
import 'widget/finance_widget.dart';

class AtmInside extends StatelessWidget {
  AtmInside({super.key});

  final ProgressStore progressStore = ProgressStore();
  final SettingsStore settingsStore = SettingsStore();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.mainBackground,
      appBar: AppBar(
        backgroundColor: AppColors.mainBackground,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon:SvgPicture.asset(
                    AssetIcon.back,
                      color: AppColors.lightBlack,
                    ),
                onPressed: () {

                },
              ),
              IconButton(
                icon:SvgPicture.asset(
                  AssetIcon.gear,
                  color: AppColors.lightBlack,
                ),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                    ),
                    builder: (BuildContext context) {
                      return SettingsBottomSheet(store: settingsStore);
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      text: AppLocalizations.of(context)!.vendingMachines,
                        style: const TextStyle(
                          fontSize: 24,
                          color: AppColors.lightBlack,
                          fontFamily: AppFonts.roboto,
                          fontWeight: FontWeight.w700,

                    )
                )
                ),
              SizedBox(height: 24,),
              AtmWidget(
                atmId: "54467345",
                status: "Не работает",
                title: "Снековый",
                location: "ТЦ Мега, Химки",
                typeOfTire: "MDB",
                signalLevel: "Стабильный",
                atmIdentifier: "13856646",
                modem: "3463457365",
                color: AppColors.white,

              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  ProgressWidget(
                    height: 160,
                    width: 160,
                    store: progressStore,
                    title: AppLocalizations.of(context)!.currentLoadingLevel,
                    backgroundColor: AppColors.white,
                    loadingColor: AppColors.blue,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                       // const Spacer(),
                        CustomButton(
                          onPressed: () {
                            // todo Временное решение для теста загрузки в виджете
                            progressStore.setProgress(85);
                          },
                          text: AppLocalizations.of(context)!.loadingButton,
                          backgroundColor: AppColors.mainBackground,
                          textSize: 16,
                        ),
                        const SizedBox(height: 16),
                        CustomButton(
                          onPressed: () {
                            // todo Временное решение для теста загрузки в виджете
                            progressStore.setProgress(0);
                          },
                          text: AppLocalizations.of(context)!.inventoryButton,
                          backgroundColor: AppColors.mainBackground,
                          textSize: 16,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24,),
              RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                      text: AppLocalizations.of(context)!.eventsButton,
                      style: const TextStyle(
                        fontSize: 16,
                        color: AppColors.lightBlack,
                        fontFamily: AppFonts.roboto,
                        fontWeight: FontWeight.w500,

                      )
                  )
              ),
              SizedBox(height: 12,),
              EventWidget(
                time: "14:00",
                title: "Сейф переполнен",
               onPressed: (){},
               // description: "dd",
              ),
              EventWidget(
                time: "14:00",
                title: "Сейф переполнен",
                onPressed: (){},
                description: "dd",
              ),
              EventWidget(
                time: "14:00",
                title: "Сейф переполнен",
                onPressed: (){},
               // description: "dd",
              ),
              SizedBox(height: 12,),
              CustomButton(
                  onPressed: (){},
                  text: AppLocalizations.of(context)!.watchMoreButton,
                backgroundColor: AppColors.mainBackground,
              ),
              SizedBox(height: 20,),
              RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                      text: AppLocalizations.of(context)!.finance,
                      style: const TextStyle(
                        fontSize: 16,
                        color: AppColors.lightBlack,
                        fontFamily: AppFonts.roboto,
                        fontWeight: FontWeight.w500,

                      )
                  )
              ),
              SizedBox(height: 16,),
              SizedBox(
                height: 72,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    FinanceWidget(
                      title: "Баланс",
                      money: "10 000₽",
                      height: 72,
                      width: 153,
                      icon: AssetIcon.money,
                    ),
                    FinanceWidget(
                      title: "Доход",
                      money: "5 000₽",
                      height: 72,
                      width: 153,
                      icon: AssetIcon.cashBack,
                    ),
                    FinanceWidget(
                      title: "Расход",
                      money: "2 000₽",
                      height: 72,
                      width: 153,
                      icon: AssetIcon.money,
                    ),
                    FinanceWidget(
                      title: "Прибыль",
                      money: "3 000₽",
                      height: 72,
                      width: 153,
                      icon: AssetIcon.cashBack,
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).padding.bottom + 28)
            ],
          ),
        )
      ),
    );
  }
}
