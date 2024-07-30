import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: BMIDrawer(),
    );
  }
}

class BMIDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliderDrawer(
      appBar: SliderAppBar(
        appBarColor: Color(0xFF0A0E21),
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
      slider: Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MenuButton(
              label: 'Home',
            ),
            MenuButton(
              label: 'Settings',
            ),
            MenuButton(
              label: 'Exit',
            ),
          ],
        ),
      ),
      child: InputPage(),
    );
  }
}

class MenuButton extends StatelessWidget {

  final String label;

  MenuButton({ required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 16),
          Text(
            label,
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
