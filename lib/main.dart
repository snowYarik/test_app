import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/injector.dart';
import 'package:test_app/presentation/pages/splash_page.dart';

void main() {
  configureDependencies();
  runApp(
    GetMaterialApp(
      home: App(),
    ),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => FutureBuilder<FirebaseApp>(
        future: Firebase.initializeApp(),
        builder: (context, asyncSnapshot) {
          if (asyncSnapshot.connectionState == ConnectionState.done &&
              asyncSnapshot.hasData) {
            return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
                visualDensity: VisualDensity.adaptivePlatformDensity,
                primaryColor: const Color(0XFFF086A3),
                backgroundColor: Colors.purple.shade100,
              ),
              home: SplashPage(),
            );
          }
          return const SizedBox.shrink();
        },
      );
}
