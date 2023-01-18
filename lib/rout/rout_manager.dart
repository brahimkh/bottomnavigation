import 'package:flutter/material.dart';
import 'package:navigation_custom/view/page_navigation/add_page.dart';
import 'package:navigation_custom/view/page_navigation/clock_page.dart';
import 'package:navigation_custom/view/page_navigation/home_page.dart';
import 'package:navigation_custom/view/page_navigation/notify_page.dart';

class RoutManager {
  RoutManager._();

  static Route<dynamic> routeManagement(RouteSettings rout) {
    switch (rout.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      case '/clock':
        return MaterialPageRoute(
          builder: (context) => const ClockPage(),
        );
      case '/notify':
        return MaterialPageRoute(
          builder: (context) => const NotificationPage(),
        );
      case '/add':
        return MaterialPageRoute(
          builder: (context) => const AddPage(),
        );
    }
    return MaterialPageRoute(
      builder: (context) => const HomePage(),
        fullscreenDialog: true
    );
  }
}
