import 'package:flutter/material.dart';
import 'package:only_app_style/router.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'UI Check',
      routerConfig: router,
    );
  }
}