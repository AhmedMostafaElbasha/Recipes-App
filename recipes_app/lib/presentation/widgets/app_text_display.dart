import 'package:flutter/material.dart';
import 'package:recipes_app/constants/constants.dart';
import 'package:recipes_app/utilities/app_localizations.dart';

class AppTextDisplay extends StatelessWidget {
  final String translation;
  final String text;
  final TextAlign textAlign;
  final TextStyle textStyle;
  final int maxLines;

  AppTextDisplay({
    this.translation = '',
    this.text = '',
    this.textAlign = TextAlign.center,
    this.textStyle,
    this.maxLines = 1,
  }) : assert(translation != '' || text != '');

  @override
  Widget build(BuildContext context) {
    return Text(
      translation == ''
          ? text
          : AppLocalizations.of(context).translate(translation),
      textAlign: textAlign,
      softWrap: true,
      style: textStyle ?? TextStyle(),
      maxLines: maxLines,
    );
  }
}
