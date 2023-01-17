import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int increment=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Text(increment.toString()) ,
      ),
      floatingActionButton: IconButton(
        onPressed: (){
          setState(() {
            increment++;
          });
        },
        icon: Icon(Icons.add),
      )
    );
  }
}
