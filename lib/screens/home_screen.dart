import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('componentes flutter'),
      ),
      body: ListView.separated(
        itemCount: menuOptions.length,
        separatorBuilder: (_, __) {
          return const Divider();
        },
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(menuOptions[index].name),
            leading: Icon(menuOptions[index].icon, color: AppTheme.primary),
            onTap: () {
              // final route = MaterialPageRoute(
              //     builder: (context) => const Listview1Screen());
              // Navigator.push(context, route);
              Navigator.pushNamed(context, menuOptions[index].route);
            },
          );
        },
      ),
    );
  }
}
