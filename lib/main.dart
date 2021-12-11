import 'package:flutter/material.dart';
import 'package:fultter_codigo4_ui/pages/login1_page.dart';
import 'package:fultter_codigo4_ui/pages/login2_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login2Page(),
    );
  }
}
