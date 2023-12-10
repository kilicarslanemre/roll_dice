import 'package:flutter/material.dart';

class StyleTextwidget extends StatelessWidget {
   const StyleTextwidget(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) { 
    return Text(
      text,
      style: const TextStyle(
          color: Colors.orange, fontSize: 30, fontStyle: FontStyle.italic),
    );
  }
}
