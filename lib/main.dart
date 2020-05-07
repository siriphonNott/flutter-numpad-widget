import 'package:flutter/material.dart';
import 'package:numpad_widget/widgets/Numpad.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Numpad Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Numpad Widget'),
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

  int length = 6;

  onChange(String number){
    if(number.length == length){
      // TODO
    }
    print(number);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                'Please input your PIN Code',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400),
              ),
            ),
            Numpad(length: length, onChange: onChange,)
          ],
        ),
      ),
    );
  }
}
