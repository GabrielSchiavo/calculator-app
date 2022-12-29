import 'package:calculator/components/display.dart';
import 'package:calculator/components/keyboard.dart';
import 'package:calculator/models/memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  CalculatorState createState() => CalculatorState();
}

class CalculatorState extends State<Calculator> {
  final Memory memory = Memory();

  _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    
    // Altera a cor de fundo da statusbar e dos ícones
    const SystemUiOverlayStyle(
      statusBarColor: Color(0xFF202020),
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    );

    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF8ACEFF),
        useMaterial3: true,
        fontFamily: 'RobotoFlex',
      ),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        top: false,
        child: Column(
          children: <Widget>[
            Display(memory.value),
            Keyboard(_onPressed),
          ],
        ),
      ),
    );
  }
}