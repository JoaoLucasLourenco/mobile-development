import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Bem vindo'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(widget.title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(Icons.house_sharp, size: 200,color: Colors.blue),
            const Text(
              'INFO HOME',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 29, color: Colors.blue),
            ),
            const Text(
              'Soluções em IoT',
              style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20, color: Colors.blue),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children:[
                
                TextButton(onPressed: (){},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue
                ),
                child: Text('Login', style: TextStyle(color: Colors.white),)
                ),
                TextButton(onPressed: (){},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue
                ),
                child: Text('Cadastrar', style: TextStyle(color: Colors.white),)
                ),
              ],
            )
            
          ],
        ),
        
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
