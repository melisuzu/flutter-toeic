import 'package:flutter/material.dart';

import '1page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TOEIC',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: FirstPage(),
    );
  }
}