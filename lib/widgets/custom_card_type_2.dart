import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageURL;
  final String? name;

  const CustomCardType2({
    super.key,
    required this.imageURL,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(.3),
      child: Column(
        children: [
          //coloca imagen
          FadeInImage(
            placeholder: const AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(imageURL),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(
                right: 20,
                top: 10,
                bottom: 10,
              ),
              child: Text(name ?? 'no title'),
            ),
        ],
      ),
    );
  }
}
