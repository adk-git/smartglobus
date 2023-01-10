import 'package:flutter/material.dart';
import 'package:smartglobus/routes/app_pages.dart';
import 'package:smartglobus/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmartGlobe',
      debugShowCheckedModeBanner: false,
      routes: AppPages.pages,
      initialRoute: AppRoutes.initial,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
