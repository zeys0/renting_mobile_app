import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/theme/app.theme.dart';
import 'utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appThemeData,
      initialRoute: '/',
      getPages: routes,
    );
  }
}
