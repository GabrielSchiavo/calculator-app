import 'package:calculator/components/button.dart';
import 'package:calculator/components/button_row.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) cb;

  const Keyboard(this.cb, {super.key});

  @override
  Widget build(BuildContext context) {
    // Obtem o tamanho do dispositivo
    final deviceSize = MediaQuery.of(context).size;

    return Container(
      color: const Color(0xFF202020),
      //Multiplica a altura do dispositivo por 70% (0.70)
      height: deviceSize.height * 0.70,
      
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Column(
          children: [
            ButtonRow([
              Button.big(text: 'AC', color: Button.colorOperation, cb: cb),
              Button.operation(text: '%', cb: cb),
              Button.operation(text: '/', cb: cb),
            ]),
            const SizedBox(height: 5),
            ButtonRow([
              Button(text: '7', cb: cb),
              Button(text: '8', cb: cb),
              Button(text: '9', cb: cb),
              Button.operation(text: 'x', cb: cb),
            ]),
            const SizedBox(height: 5),
            ButtonRow([
              Button(text: '4', cb: cb),
              Button(text: '5', cb: cb),
              Button(text: '6', cb: cb),
              Button.operation(text: '-', cb: cb),
            ]),
            const SizedBox(height: 5),
            ButtonRow([
              Button(text: '1', cb: cb),
              Button(text: '2', cb: cb),
              Button(text: '3', cb: cb),
              Button.operation(text: '+', cb: cb),
            ]),
            const SizedBox(height: 5),
            ButtonRow([
              Button.big(text: '0', cb: cb),
              Button(text: '.', cb: cb),
              Button(text: '=', color: Button.colorBlue, cb: cb),
            ]),
          ],
        ),
      ),
    );
  }
}
