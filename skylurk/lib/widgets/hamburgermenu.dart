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
          ListTile(
            title: const Text("Item 1"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}