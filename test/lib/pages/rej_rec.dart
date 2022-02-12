import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rejected Received Referrals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RejSen(),
    );
  }
}

class RejSen extends StatefulWidget {
  //MyHomePage({Key key}) : super(key: key);

  @override
  _RejSenState createState() => _RejSenState();
}

class _RejSenState extends State<RejSen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rejected Received Referrals"),
      ),
      body: Center(),
    );
  }
}