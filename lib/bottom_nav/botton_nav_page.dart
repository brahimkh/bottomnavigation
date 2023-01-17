import 'package:flutter/material.dart';
class BottomNavigationPage extends StatelessWidget {
  void Function(int)? onTap;
  final int currentIndex;
   BottomNavigationPage({Key? key,this.onTap,required this.currentIndex}) : super(key: key);
  final items=[
    {
      'icon':Icons.account_balance,
      'label':'Home',
    },
    {
      'icon':Icons.access_alarms,
      'label':'O\'clock',
    },
    {
      'icon':Icons.add_alert_rounded,
      'label':'Notification',
    },
    {
      'icon':Icons.add,
      'label':'Add',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      items:[
        for (Map<String,dynamic> item in items)...[
          BottomNavigationBarItem(
              icon: Icon(item['icon']),
            label: item['label'],
            tooltip: item['label'],
          ),
        ]
      ],

    );
  }
}
