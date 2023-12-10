import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    
     const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
           Color.fromARGB(255, 59, 13, 138),
           Color.fromARGB(255, 97, 39, 195)),
      ),
    ),
  );
}


 //body: GradientContainer.purple() ==>Ek olarak kurduğumuz kurucu işlev bu şekilde çağrılır.

//  İLK ÇÖZÜM
//body: GradientContainer([Color.black,Color.white])

