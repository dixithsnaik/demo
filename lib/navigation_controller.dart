import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_demo/homepage.dart';
import 'package:page_transition/page_transition.dart';

class NavigationController extends GetxController {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return PageTransition(
          child: MyHomePage(title: 'Home'),
          type: PageTransitionType.fade,
        );

      default:
       return PageTransition(
          child: MyHomePage(title: 'Home'),
          type: PageTransitionType.fade,
        );
    }
  }
}
