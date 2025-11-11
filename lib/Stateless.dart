import 'package:flutter/material.dart';

class Stateless extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: Center(
          child: Heading(
            text: "Hellow",
          ),
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String text; // state text final

  const Heading({Key? key, required this.text}) : super(key: key); // state text masuk ke constructor

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}