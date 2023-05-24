import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Homepage extends StatefulWidget {
  final String id='home_page';
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Text('home'),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 22.0),
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: ()=>print('opened'),
        onClose: ()=>print('closed'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,

          shape: CircleBorder(),
      children: [
        SpeedDialChild(
          child: Icon(Icons.accessibility),
          backgroundColor: Colors.red,
          label: 'first',
          labelStyle: TextStyle(fontSize: 18),
          onTap: ()=>print('clicked')
        ),
        SpeedDialChild(
            child: Icon(Icons.brush),
            backgroundColor: Colors.blue,
            label: 'brush',
            labelStyle: TextStyle(fontSize: 18),
            onTap: ()=>print('clicked')
        ),
        SpeedDialChild(
            child: Icon(Icons.hail),
            backgroundColor: Colors.cyanAccent,
            label: 'hail',
            labelStyle: TextStyle(fontSize: 18),
            onTap: ()=>print('clicked')
        ),
      ],
      ),
    );
  }
}
