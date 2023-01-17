import 'package:flutter/cupertino.dart';

class NavigatorKey{
  NavigatorKey._();
  static final navigatorKey ={
    '0':GlobalKey<NavigatorState>(),
    '1':GlobalKey<NavigatorState>(),
    '2':GlobalKey<NavigatorState>(),
    '3':GlobalKey<NavigatorState>()
  };
}