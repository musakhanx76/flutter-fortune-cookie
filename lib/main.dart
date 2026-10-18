import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  MyHomePage({super.key});

  final String _currentfortune="";


  


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _currentfortune = "";

  final _fortunelist = [
    "You will have a great day!",
    "you will find happiness in unexpected places.",
    "A new opportunity will present itself to you soon.",
    "Your hard work will pay off in the near future.",
  ];


  void _randomFortune(){
    var random = Random();
    int fortune = random.nextInt(_fortunelist.length);
    setState(() {
      _currentfortune = _fortunelist[fortune];
    });
    
      print(_currentfortune);

  }
  

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
       
      ),
      body: Center(
        
        child: Column(
          
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/fortune_cookie.png' , width: 200, height: 200, fit: BoxFit.cover,),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text(
                   '$_currentfortune',
                   style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            ElevatedButton(onPressed: _randomFortune,
             child: Text('Get Fortune'))
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _randomFortune,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
