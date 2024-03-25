import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_demo/globles.dart';
import 'package:new_demo/homepage.dart';
import 'package:new_demo/initial_bindings.dart';
import 'package:new_demo/navigation_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: navigatorKey,
      scaffoldMessengerKey: snackbarKey,
      initialRoute: "/",
      onGenerateRoute: NavigationController.generateRoutes,
      initialBinding: InitialBindings(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Home'),
    );
  }
}
