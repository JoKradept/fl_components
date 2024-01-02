import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyApp();
    // return MultiProvider(
    //   providers: [ChangeNotifierProvider(create: (_) => PointService())],
    //   child: MyApp(),
    // );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //quita el banner ese de debug
      debugShowCheckedModeBanner: false,
      // titulo de la barra de arriba
      title: 'Material App',
      // inicia las rutas y va a la pantalla que este en la clase AppRoutes
      initialRoute: AppRoutes.initialRoute,
      //rutas en las que estan las pantallas de ejemplio
      routes: AppRoutes.getAppRoutes(),
      // este solo hace que las rutas que no se han hecho  pues se hagan asi como magicamente
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.lightTheme,
    );
  }
}
