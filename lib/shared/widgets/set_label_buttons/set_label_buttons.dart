import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

import '../divider_vertical/divider_vertical_widget.dart';
import '../label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final bool enablePrimaryColor;
  final String secondaryLabel;

  final VoidCallback primaryOnPressed;
  final VoidCallback secondaryOnPressed;

  const SetLabelButtons(
      {Key? key,
      required this.primaryLabel,
      required this.secondaryLabel,
      required this.primaryOnPressed,
      required this.secondaryOnPressed,
      this.enablePrimaryColor = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: Row(
        children: [
          Expanded(
              child: LabelButton(
            label: primaryLabel,
            onPressed: primaryOnPressed,
            style: enablePrimaryColor ? TextStyles.buttonPrimary : null,
          )),
          DividerVerticalWidget(),
          Expanded(
              child: LabelButton(
            label: secondaryLabel,
            onPressed: secondaryOnPressed,
          )),
        ],
      ),
    );
  }
}
