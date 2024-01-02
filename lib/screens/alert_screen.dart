import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  void displayDialogAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('titulo'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('contenido alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 100),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'cancelar',
                style: TextStyle(color: Colors.red),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('ok'),
            )
          ],
        );
      },
    );
  }

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('titulo'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('contenido alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 100),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'cancelar',
                style: TextStyle(color: Colors.red),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('ok'),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.red,
            shape: const StadiumBorder(),
            elevation: 10,
          ),
          onPressed: () {
            // si plataforma es android
            Platform.isAndroid
                //dialogo de android
                ? displayDialogAndroid(context)
                //dialogo de IOS
                : displayDialogIOS(context);
            // displayDialogAndroid(context);
            // displayDialogIOS(context);
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Text(
              'Mostrar alerta',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.close,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
