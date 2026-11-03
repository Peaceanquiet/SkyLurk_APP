import 'package:flutter/material.dart';
import 'package:skylurk/widgets/hamburger_menu.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SkyClient',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      
      home: const MyHomePage(title: 'SkyLurk'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
        leading: Builder( 
          builder: (context) {
            return IconButton(icon: const Icon(Icons.menu),
          onPressed: () {
              Scaffold.of(context).openDrawer();
          },
          );
        },
        ),
        actions: [
          Icon(Icons.message),
          Padding(padding: EdgeInsetsGeometry.all(5),)
        ]
      ),
      drawer: HamburgerDrawer(data: "Single"),
      body: Center(        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          ],
        ),
      ),
    );
  }
}
