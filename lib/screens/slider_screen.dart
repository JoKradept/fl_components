import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _slideValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders and checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 200,
            activeColor: AppTheme.primary,
            //divisiones para pasos
            divisions: 10,
            //valor inicial
            value: _slideValue,

            onChanged: (value) {
              _slideValue = value;
              setState(() {});
            },
          ),
          Checkbox(
              value: true,
              onChanged: (value) {
                setState(() {});
              }),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS64ARUmp1DsrlDwx0AyDAc29rR-8c8k0cZPA&usqp=CAU'),
                fit: BoxFit.contain,
                width: _slideValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
