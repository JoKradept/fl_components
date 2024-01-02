// ignore_for_file: avoid_print
import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'package:fl_components/data/graphic_data.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraphicScreen extends StatefulWidget {
  const GraphicScreen({super.key});

  @override
  State<GraphicScreen> createState() => _GraphicScreenState();
}

class _GraphicScreenState extends State<GraphicScreen> {
  int x = 0, y = 0;
  Color normal = const Color.fromARGB(123, 200, 230, 201),
      normal1 = const Color.fromARGB(123, 200, 230, 201);
  String conex = 'valor';
  late Timer timer;

  @override
  void initState() {
    super.initState();
    dbPuntos();

    // Llama a la función al iniciar la pantalla
    timer = Timer.periodic(const Duration(seconds: 5), (Timer t) {
      setState(() {});
      dbPuntos();
    });
  }

  @override
  void dispose() {
    // Al destruir el widget, cancela el temporizador para evitar fugas de memoria
    timer.cancel();
    super.dispose();
  }

  void dbPuntos() async {
    // URL de tu archivo PHP en el servidor
    String url = 'https://invernaderojc.000webhostapp.com/php/consultar.php';

    try {
      // Realiza la solicitud HTTP al archivo PHP
      var response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        // La solicitud fue exitosa, puedes manejar la respuesta aquí
        conex = 'exito';
        print('Respuesta del servidor: ${response.body}');
        // Puedes procesar la respuesta según lo que devuelva tu archivo PHP
        List<Map<String, dynamic>> parsedResponse =
            List<Map<String, dynamic>>.from(json.decode(response.body));
        // Asignar los puntos recibidos
        for (var punto in parsedResponse) {
          addData(punto['x']!, punto['y']!);
        }
        setState(() {});
      } else {
        // La solicitud no fue exitosa
        conex = 'err solicitud';
        print('Error en la solicitud: ${response.statusCode}');
      }
    } catch (e) {
      // Manejo de errores en la solicitud
      conex = 'error';
      print('Error: $e');
    }
  }

  void deleteData() {
    bool exists = timeSeriesData.any((data) => data.x == x && data.y == y);

    if (exists) {
      // Eliminar el dato si existe
      normal = const Color.fromARGB(123, 200, 230, 201);
      timeSeriesData.removeWhere((data) => data.x == x && data.y == y);
    } else {
      // Si el dato no existe, mostrar un mensaje
      normal = const Color.fromARGB(92, 233, 30, 98);
    }
  }

  void addData(int x, int y) {
    TimeSeriesData newTimeSeriesData = TimeSeriesData(x, y);

    // Verificar si el dato ya existe en la lista
    bool alreadyExists =
        timeSeriesData.any((data) => data.x == x && data.y == y);

    if (!alreadyExists) {
      timeSeriesData.add(newTimeSeriesData);
      normal1 = const Color.fromARGB(123, 200, 230, 201);
    } else {
      // Si el dato ya existe, muestra que ya existe
      print('El dato ya existe en la lista');
      normal1 = const Color.fromARGB(92, 233, 30, 98);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Graphics'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text('Grafica'),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              height: 300,
              child: SfCartesianChart(
                series: getSplineChart(),
              ),
            ),
            Center(
              child: ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      x++;
                      setState(() {});
                    },
                    child: const Text('+x'),
                  ),
                  TextButton(
                    onPressed: () {
                      x--;
                      setState(() {});
                    },
                    child: const Text('-x'),
                  ),
                  TextButton(
                    onPressed: () {
                      y++;
                      setState(() {});
                    },
                    child: const Text('+y'),
                  ),
                  TextButton(
                    onPressed: () {
                      y--;
                      setState(() {});
                    },
                    child: const Text('-y'),
                  ),
                ],
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    deleteData();
                    setState(() {});
                  },
                  style: TextButton.styleFrom(backgroundColor: normal),
                  child: const Text('eliminar'),
                ),
                TextButton(
                  onPressed: () {
                    addData(x, y);
                    setState(() {});
                  },
                  style: TextButton.styleFrom(backgroundColor: normal1),
                  child: const Text('añadir'),
                ),
                TextButton(
                  onPressed: null,
                  style:
                      TextButton.styleFrom(backgroundColor: Colors.green[400]),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 5,
                        width: 45,
                      ),
                      Text(
                        ' Y - $y ',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 8, 75, 10),
                            fontSize: 12),
                        overflow: TextOverflow.fade,
                      ),
                      Text(
                        ' X - $x ',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 8, 75, 10),
                            fontSize: 12),
                      ),
                      const SizedBox(height: 7),
                    ],
                  ),
                ),
              ],
            ),
            Text(conex),
          ],
        ),
      ),
    );
  }
}
