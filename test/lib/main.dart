import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonText = 'GoodNight World';
  bool lightOn = true;

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        backgroundColor:
            lightOn ? CupertinoColors.white : CupertinoColors.black,
        child: Center(
          child: CupertinoButton(
            child: Text(buttonText),
            onPressed: () {
              setState(
                () {
                  lightOn = !lightOn;
                  lightOn
                      ? buttonText = 'Goodnight World'
                      : buttonText = 'Hello World';
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
