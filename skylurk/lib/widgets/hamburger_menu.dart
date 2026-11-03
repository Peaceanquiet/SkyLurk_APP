import 'package:flutter/material.dart';

class HamburgerDrawer extends StatefulWidget {
  const HamburgerDrawer({
    super.key,
    this.width,
    this.height,
    required this.data,
  });

  final double? width;
  final double? height;
  final String data;

  @override
  State<HamburgerDrawer> createState() => _HamburgerDrawerState();
}

class _HamburgerDrawerState extends State<HamburgerDrawer>{
  @override
  Widget build(BuildContext context){
    
    return Drawer(
      child: ListView(
        children: [
          Placeholder(
            fallbackHeight: 200,
          ),
          Padding(
            padding: EdgeInsetsGeometry.all(10)
          ),
          Container(
            color: Colors.amberAccent[100],
            
            child:
              ListTile(
              title: const Text("Options"),
              
              onTap: () {
                Navigator.pop(context);
                
              },
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.all(10)
          ),
          //Final container add more tiles above here
          Container(
            color: Colors.blueGrey,
            child: ListTile(
              title: const Text("Leave"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          )
        ],
      ),
    );
  }
}