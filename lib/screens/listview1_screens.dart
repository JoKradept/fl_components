import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ['megaman', 'hola1', 'hola2', 'hola3'];
  const Listview1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView1")),
      body: ListView(
        children: [
          ...options.map(
            (game) => ListTile(
              title: Text(game),
              trailing: const Icon(Icons.arrow_right),
            ),
          )
          // ListTile(title: Text("hola mundo")),
        ],
      ),
    );
  }
}
