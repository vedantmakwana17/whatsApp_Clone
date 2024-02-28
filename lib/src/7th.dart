import 'package:flutter/material.dart';
import 'package:hello/src/6x.dart';

class Seven extends StatefulWidget {
  const Seven({super.key});

  @override
  State<Seven> createState() => _SevenState();
}

class _SevenState extends State<Seven> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Six(),
    );
  }
}
