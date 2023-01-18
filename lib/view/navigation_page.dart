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
  int _currentIndex=0;
  String _selectPaged='/';
  List<String> pages=['/','/clock','/notify','/add'];
  final _navigatorKeys=NavigatorKey.navigatorKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          _buildOffstageNavigator('/'),
          _buildOffstageNavigator('/clock'),
          _buildOffstageNavigator('/notify'),
          _buildOffstageNavigator('/add'),
        ],
      ),
      bottomNavigationBar: BottomNavigationPage(
        onTap:(int index)=>{onTaped(pages[index],index)} ,
        currentIndex: _currentIndex,
      ),
    );
  }
  Widget _buildOffstageNavigator(String val){
    return Offstage(
      offstage:_selectPaged!=val ,
      child: TabNavigatorPage(
        navigatorKey:_navigatorKeys[val] ,
      ),
    );
  }
  void onTaped(String page,int index) {
   if(page ==_selectPaged){
     _navigatorKeys[index]?.currentState!.popUntil((route) => route.isFirst);
   }else{
     setState(() {
       _selectPaged=pages[index];
       _currentIndex=index;
     });
   }
  }
}
