import 'package:flutter/material.dart';
import 'package:posttest2_2009106053_duta_vira_pradhana_dipa/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Home(),
    );
  }
}