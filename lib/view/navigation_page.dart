import 'package:flutter/material.dart';
import 'package:navigation_custom/rout/navigatorKey.dart';
import 'package:navigation_custom/view/widgets/navigator_page.dart';
import '../bottom_nav/botton_nav_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currenIndex=0;
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();
  final _navigatorKeys=NavigatorKey.navigatorKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          _buildOffstageNavigator(0),
          _buildOffstageNavigator(1),
          _buildOffstageNavigator(2),
          _buildOffstageNavigator(3),
        ],
      ),
      bottomNavigationBar: BottomNavigationPage(
        onTap: onTaped,
        currentIndex: _currenIndex,
      ),
    );
  }
  Widget _buildOffstageNavigator(int index){
    return Offstage(
      offstage:_currenIndex!=index ,
      child: TabNavigatorPage(
        navigatorKey:_navigatorKeys[_currenIndex] ,
      ),
    );
  }
  void onTaped(int index) {
   if(index==_currenIndex){
     _navigatorKeys[index]?.currentState!.popUntil((route) => route.isFirst);
   }else{
     setState(() =>_currenIndex=index);
   }
  }
}
