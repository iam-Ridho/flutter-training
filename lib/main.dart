import 'package:flutter/material.dart';
import 'package:flutter_app/second_screen.dart';
import 'Stateless.dart';
import 'stateful_widget.dart';
import 'input_field.dart';

void main() {
  runApp(MyApp());
  // runApp(Stateless());
}

class MyApp extends StatelessWidget {

  final String message = "Ini pesan dari First Screen";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First Screen'),
          backgroundColor: Colors.amberAccent,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.blue),
            ),
          ],
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.blue),
          ),
        ),
        body: ListView(
          children: [
            Wrap(
              alignment: WrapAlignment.spaceAround,
              spacing: 40,
              runSpacing: 20,
              children: <Widget>[
                _buildCard(const MyStateful(text: 'RIdos')),
                _buildCard(const StatefulSmall(text: 'Rodos')),
                _buildCard(const InputField()),
                _buildCard(
                  Center(
                    child: Image.network(
                      'https://imgs.search.brave.com/VnAkMvkD0nX50CDIYpkhi9o5Mps-RJBBVahHVHMZr10/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXIuZm9yZnVu/LmNvbS9mZXRjaC81/ZC81ZDE5M2JmZmY2/NTYwZjAzZTdiYzJl/Y2ZlYWRlZjVmNC5q/cGVn',
                    ),
                  ),
                ),
                _buildCard(Center(child: Image.asset('images/cat.jpg'))),
                _buildCard(
                  Center(
                    child: ElevatedButton(
                      child: const Text('Second Screen'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SecondScreen(message)
                          ),
                        );
                      },
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

Widget _buildCard(Widget child) {
  return Container(
    width: 250,
    height: 250,
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.blueAccent,
      borderRadius: BorderRadius.circular(10),
      boxShadow: const [
        BoxShadow(color: Colors.black, offset: Offset(3, 6), blurRadius: 6),
      ],
    ),
    child: Center(child: child),
  );
}
