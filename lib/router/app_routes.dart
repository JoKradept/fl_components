import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
//opciones del menu
  static final menuOptions = <MenuOption>[
    // MenuOption(
    //     route: 'home',
    //     icon: Icons.home,
    //     name: 'Home Screen',
    //     screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.adb_outlined,
        name: 'ListView1',
        screen: const Listview1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.add_box,
        name: 'ListView2',
        screen: const Listview2Screen()),
    MenuOption(
        route: 'cards',
        icon: Icons.screen_lock_landscape_rounded,
        name: 'Cards Screen',
        screen: const CardScreen()),
    MenuOption(
        route: 'alert',
        icon: Icons.integration_instructions,
        name: 'Alert Screen',
        screen: const AlertScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.supervised_user_circle_sharp,
        name: 'Avatar Screen',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.video_file_outlined,
        name: 'Animated Screen',
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'input',
        icon: Icons.input_outlined,
        name: 'Input Contenedor',
        screen: const InputScreen()),
    MenuOption(
        route: 'slider',
        icon: Icons.sort_outlined,
        name: 'Slider',
        screen: const SliderScreen()),
    MenuOption(
        route: 'graphic',
        icon: Icons.auto_graph,
        name: 'Graphic',
        screen: const GraphicScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext constext) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'cards': (BuildContext context) => const CardScreen()
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
