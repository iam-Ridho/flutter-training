  import 'package:flutter/material.dart';

  class InputField extends StatefulWidget {
    const InputField({Key? key}) : super(key: key);

    @override
    State<InputField> createState() => _InputFieldState();
  }

  class _InputFieldState extends State<InputField> {
    String _name = '';

    @override
    Widget build(BuildContext context) {
      return Column(
        children: <Widget>[
          TextField(
            decoration: const InputDecoration(
              hintText: 'Tulis Nama...',
              labelText: 'Namamu',
            ),
            onChanged: (String value) {
              setState(() {
                _name = value;
              });
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: () {
            showDialog(context: context, builder: (context) {
              return AlertDialog(content: Text('Hello $_name'));
            });
          }, child: const Text('Submit')),
        ],
      );
    }
  }
