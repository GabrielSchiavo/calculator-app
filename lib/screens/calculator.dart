import 'package:calculator/components/display.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    // Altera a cor de fundo da statusbar e dos ícones
    SystemUiOverlayStyle(
      statusBarColor: Theme.of(context).colorScheme.primary,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF8ACEFF),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Column(
          children: const <Widget>[
            Display('123.45'),
            Text('Keyboard'),
          ],
        ),
      ),
    );
  }
}
