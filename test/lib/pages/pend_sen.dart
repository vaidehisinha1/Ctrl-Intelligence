import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pending Sent Referrals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PendSen(),
    );
  }
}

class PendSen extends StatefulWidget {
  //MyHomePage({Key key}) : super(key: key);

  @override
  _PendSenState createState() => _PendSenState();
}

class _PendSenState extends State<PendSen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pending Sent Referrals"),
      ),
      body: Center(),
    );
  }
}