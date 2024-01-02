import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('cardwidget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
            name: 'un hermoso paisaje',
            imageURL:
                'https://d7lju56vlbdri.cloudfront.net/var/ezwebin_site/storage/images/_aliases/img_1col/noticias/el-webb-capta-una-imagen-infrarroja-muy-detallada-de-estrellas-en-formacion-activa/11037078-1-esl-MX/El-Webb-capta-una-imagen-infrarroja-muy-detallada-de-estrellas-en-formacion-activa.jpg',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            name: 'nomanches',
            imageURL:
                'https://www.adslzone.net/app/uploads-adslzone.net/2019/04/borrar-fondo-imagen.jpg',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            imageURL:
                'https://d2x3xhvgiqkx42.cloudfront.net/12345678-1234-1234-1234-1234567890ab/eb539285-05f5-4715-86be-23af97e5f8b7/2022/11/07/3dbc04fc-6e9e-4e3a-8c3e-580ffb141d5f/6bab08b2-f483-452b-97c2-09b9e78f7e13.png',
          ),
        ],
      ),
    );
  }
}
