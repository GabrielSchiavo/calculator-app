import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const colorBlue = Color(0xFF50C0FA);
  static const colorDefault = Color(0xFF3C3B3B);
  static const colorOperation = Color(0xFF323232);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  const Button({
    required this.text,
    this.big = false,
    this.color = colorDefault,
    required this.cb,
    super.key,
  });
  const Button.big({
    required this.text,
    this.big = true,
    this.color = colorDefault,
    required this.cb,
    super.key,
  });
  const Button.operation({
    required this.text,
    this.big = false,
    this.color = colorOperation,
    required this.cb,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        onPressed: (() => cb(text)),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: text == '=' ? Colors.black : Colors.white,
            fontFamily: 'Montserrat',
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  }
}
