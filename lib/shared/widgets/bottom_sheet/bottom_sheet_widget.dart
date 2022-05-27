import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

import '../../themes/app_colors.dart';

class BottomSheetWidget extends StatelessWidget {
  final String primaryLabel;
  final String secondaryLabel;

  final VoidCallback primaryOnPressed;
  final VoidCallback secondaryOnPressed;

  final String title;
  final String subtitle;

  const BottomSheetWidget(
      {Key? key,
      required this.primaryLabel,
      required this.secondaryLabel,
      required this.primaryOnPressed,
      required this.secondaryOnPressed,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Material(
          child: Container(
            color: AppColors.shape,
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.black.withOpacity(0.6),
                )),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: Text.rich(
                        TextSpan(
                            text: title,
                            style: TextStyles.buttonBoldHeading,
                            children: [
                              TextSpan(
                                text: "\n$subtitle",
                                style: TextStyles.buttonHeading,
                              )
                            ]),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(height: 1, color: AppColors.stroke),
                    SetLabelButtons(
                        enablePrimaryColor: true,
                        primaryLabel: primaryLabel,
                        secondaryLabel: secondaryLabel,
                        primaryOnPressed: primaryOnPressed,
                        secondaryOnPressed: secondaryOnPressed),
                    SizedBox(
                      height: 2,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}