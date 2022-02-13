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
      body:Center(
        child: Card(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.priority_high),
                title: Text('Adesh Ghule'),
                subtitle: Text('Aditya Birla Memorial Hospital, Pune: Anesthesiologists'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Send: 15th December 21'),
                  const SizedBox(width: 1),
                  const SizedBox(width: 5),
                ],
              ),
              Divider(
                height: 10.0,
                color: Colors.black,
              ),
              const ListTile(
                leading: Icon(Icons.priority_high),
                title: Text('Shree Bohara'),
                subtitle: Text('Sassoon Hospital, Pune: Dermatologists'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Send: 1st December 21'),

                  const SizedBox(width: 1),
                  const SizedBox(width: 5),
                ],
              ),
              Divider(
                height: 10.0,
                color: Colors.black,
              ),
              const ListTile(
                leading: Icon(Icons.priority_high),
                title: Text('Ekta Kapoor'),
                subtitle: Text('Breach Candy Hospital, Mumbai: Dentist'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Send: 11th November 21'),
                  const SizedBox(width: 1),
                  const SizedBox(width: 5),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
