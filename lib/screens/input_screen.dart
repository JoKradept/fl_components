import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('input Screen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {
                  // ignore: avoid_print
                  print('value : $value');
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null) return 'este campo es requerido';
                  return value.length < 3 ? 'minimo de 3 letras' : null;
                },
                decoration: const InputDecoration(
                  hintText: 'Nombre del usuario',
                  labelText: 'Nombre',
                  helperText: 'Letras',
                  counterText: '3 caracts',
                  icon: Icon(Icons.admin_panel_settings),
                  prefixIcon: Icon(Icons.accessibility_new),
                  suffixIcon: Icon(Icons.supervised_user_circle_rounded),
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(35),
                  // ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
