import 'package:flutter/material.dart';

import '../../rout/rout_manager.dart';

class TabNavigatorPage extends StatelessWidget {
  final GlobalKey<NavigatorState>? navigatorKey;
  const TabNavigatorPage({Key? key,this.navigatorKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: '/',
      onGenerateRoute:  RoutManager.routeManagement,
    );
  }
}
