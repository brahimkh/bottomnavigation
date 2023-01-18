

import 'package:flutter/material.dart';

class NavigatorKey{
  NavigatorKey._();
  static final navigatorKey ={
    '/':GlobalKey<NavigatorState>(),
    '/clock':GlobalKey<NavigatorState>(),
    '/notify':GlobalKey<NavigatorState>(),
    '/add':GlobalKey<NavigatorState>()
  };
}