import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['megaman', 'hola1', 'hola2', 'hola3'];
  const Listview2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView2"),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(options[index]),
              trailing:
                  const Icon(Icons.arrow_right, color: Colors.deepOrangeAccent),
              onTap: () {
                final game = options[index];
                // ignore: avoid_print
                print(game);
              },
            );
          },
          separatorBuilder: (_, __) {
            return const Divider();
          },
        ));
  }
}
