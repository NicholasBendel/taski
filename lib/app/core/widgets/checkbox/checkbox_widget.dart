import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';
import '../text/text_widget.dart';

class CheckBoxWidget extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onTap;
  final String text;
  final bool enabled;

  const CheckBoxWidget({
    required this.value,
    required this.onTap,
    required this.text,
    super.key,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () => enabled ? onTap(!value) : null,
          child: Container(
            alignment: Alignment.center,
            width: 28.0,
            height: 28.0,
            decoration: BoxDecoration(
              color: enabled ? appColors.mutedAzure : null,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                width: 2.0,
                color: appColors.mutedAzure,
              ),
            ),
            child: enabled ?
              Icon(
                Icons.check_outlined,
                color: appColors.white,
                size: 20.0,
              ) : null,
          ),
        ),
        const SizedBox(width: 8.0),
        Flexible(
          child: GestureDetector(
            onTap: () => enabled ? onTap(!value) : null,
            child: TextWidget.urbanist(
              text: text,
              fontSize: 14.0,
              colorText: appColors.slatePurple,
            ),
          ),
        )
      ],
    );
  }
}