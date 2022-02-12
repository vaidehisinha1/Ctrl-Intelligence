import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'In Progress Sent Referrals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InProSen(),
    );
  }
}

class InProSen extends StatefulWidget {
  //MyHomePage({Key key}) : super(key: key);

  @override
  _InProSenState createState() => _InProSenState();
}

class _InProSenState extends State<InProSen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("In Progress Sent Referrals"),
      ),
      body: Center(),
    );
  }
}