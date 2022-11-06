import 'package:flutter/material.dart';
import 'package:flutter_components_app/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders & Checks'),
        ),
        body: Column(
          children: [
            Slider(
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              value: _sliderValue,
              onChanged: (value) {
                _sliderValue = value;
                setState(() {});
              },
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: NetworkImage(
                      'https://www.megaidea.net/wp-content/uploads/2021/09/Hulk-01.png'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ));
  }
}
