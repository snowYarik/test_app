import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/presentation/pages/splash_page.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: App(),
    ),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashPage(),
    );
  }
}
