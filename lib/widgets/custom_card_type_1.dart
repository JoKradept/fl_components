import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.account_circle_sharp,
              color: AppTheme.primary,
            ),
            title: Text('soy un titulo'),
            subtitle: Text('lorem ipsum dolore'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('ok'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
