import 'dart:math'; // จำเป็นสำหรับ Random
import 'package:flutter/material.dart';

class ColorChanger extends StatefulWidget {
  const ColorChanger({super.key});
  @override
  State<ColorChanger> createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger> {
  Color _currentColor = Colors.blue;
  final List<Color> _colors = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.teal,
  ];
  final Random _random = Random();

  @override
  void initState() {
    super.initState();
    _currentColor = Colors.blue;
  }

  void _changeColor() {
    setState(() {
      _currentColor = _colors[_random.nextInt(_colors.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    // UI จะมาที่นี่
    return GestureDetector(
      onTap: _changeColor,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: _currentColor,
        child: Center(child: Text('Tap me')),
      ),
    ); // Placeholder
  }
}
