import 'package:flutter/material.dart';
import 'package:test_task/app/const/app_colors.dart';
import 'package:test_task/app/const/app_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:test_task/page/main/widget/custom_row_widget.dart';

class AtmWidget extends StatelessWidget {
  final atmId;
  final status;
  final title;
  final location;
  final typeOfTire;
  final signalLevel;
  final atmIdentifier;
  final modem;
  final Color color;

  const AtmWidget({
    super.key,
    this.atmId,
    this.status,
    this.title,
    this.location,
    this.typeOfTire,
    this.signalLevel,
    this.atmIdentifier,
    this.modem,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 12,
                  color: AppColors.grey,
                  fontFamily: AppFonts.roboto,
                  fontWeight: FontWeight.w300,
                  height: 1.3,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                atmId,
                style: const TextStyle(
                  fontSize: 24,
                  color: AppColors.lightBlack,
                  fontFamily: AppFonts.roboto,
                  fontWeight: FontWeight.w400,
                  height: 1.3,
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Icon(
                    Icons.circle,
                    size: 8,
                    color: AppColors.pinkRed,
                  ),
                  SizedBox(width: 4),
                  Text(
                    status,
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
              SizedBox(height: 4),
              Text(
                location,
                style: const TextStyle(
                  fontSize: 12,
                  color: AppColors.grey,
                  fontFamily: AppFonts.roboto,
                  fontWeight: FontWeight.w300,
                  height: 1.3,
                ),
              ),
            ],
          ),


          SizedBox(height: 24,),
          CustomRow(
            firstText: AppLocalizations.of(context)!.atmTypeOfTire,
            secondText: typeOfTire,
          ),
          CustomRow(
            firstText: AppLocalizations.of(context)!.atmSignalLevel,
            secondText: signalLevel,
          ),
          CustomRow(
            firstText: AppLocalizations.of(context)!.atmIdentifier,
            secondText: atmIdentifier,
          ),
          CustomRow(
            firstText: AppLocalizations.of(context)!.atmModem,
            secondText: modem,
          ),
        ],
      ),
    );
  }
}
