import 'package:flutter/material.dart';

class WidgetButton extends StatelessWidget {
  final String text;
  final Color? bgColor;
  final Color? textColor;
  final VoidCallback? callBack;

  const WidgetButton({
    super.key,
    required this.text,
    this.bgColor,
    this.textColor,
    this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.0)),
        color: bgColor,
        textColor: textColor,
        onPressed: () {
          callBack!();
        },
        child: Text(text),
      ),
    );
  }
}
