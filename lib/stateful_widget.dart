import 'package:flutter/material.dart';

class MyStateful extends StatefulWidget {
  final String text;

  const MyStateful({Key? key, required this.text}) : super(key: key);

  @override
  State<MyStateful> createState() => _BiggerTextState();
}

class StatefulSmall extends StatefulWidget {
  final String text;

  const StatefulSmall({Key? key, required this.text}) : super(key: key);

  @override
  State<StatefulSmall> createState() => _SmallerTextState();
}

class _BiggerTextState extends State<MyStateful> {
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          widget.text,
          style: TextStyle(
            fontSize: _textSize,
            fontFamily: 'GoodBrush',
            fontWeight: FontWeight.bold
          ),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _textSize = 33.0;
            });
          },
          child: const Text("Besarkand"),
        ),
      ],
    );
  }
}

class _SmallerTextState extends State<StatefulSmall> {
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          widget.text,
          style: TextStyle(
            fontSize: _textSize,
            fontFamily: 'GoodBrush',
            fontWeight: FontWeight.w100
          ),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _textSize = 10.0;
            });
          },
          child: const Text("Kecilkand"),
        ),
      ],
    );
  }
}
