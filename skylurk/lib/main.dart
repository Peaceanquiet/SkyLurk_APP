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
      home: const MyHomePage(title: 'SkyClient'),
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
          Builder(builder: (context){
            return IconButton(icon: const Icon(Icons.message),
            onPressed: () {
              //Change this to custom drawer for messages.
              Scaffold.of(context).openEndDrawer(
                
              );
            },
            );
          },
          ),
          Padding(padding: EdgeInsetsGeometry.all(5),)
        ],
      ),
      drawer: HamburgerDrawer(),
      endDrawer: Drawer(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          Placeholder(
            
        ),
        Padding(padding:EdgeInsetsGeometry.all(5)),
         TextField(
          decoration: InputDecoration(border: OutlineInputBorder(), hintText: "Enter message here."),
        ),
        Padding(padding:EdgeInsetsGeometry.all(10)),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          //Padding(padding:EdgeInsetsGeometry.all(10)),
          FloatingActionButton(child:Text("Send"),
            onPressed: (){}),
          //Padding(padding:EdgeInsetsGeometry.all(10)), 
          FloatingActionButton(
            
            child: Text("Whisper"),
            onPressed: (){})],
            ),
            Padding(padding:EdgeInsetsGeometry.all(10)),
            ],),
        
      ),
      body: Center(        
        child: Column(
          children: [
          ],
        ),
      ),
    );
  }
}
