import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pato Clicker',
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFFFFFFF)),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Pato Clicker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  RandomColor randomColor = RandomColor();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color color = randomColor.randomColor();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset('assets/images/megumin.jpg'),
            ),
            Text(
              'You clicked $_counter times.',
              style: TextStyle(color: color, fontFamily: 'Montserrat', fontSize: 25),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
        backgroundColor: color,
      ),
    );
  }
}
