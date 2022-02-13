import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Completed Received Referrals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CompSen(),
    );
  }
}
class CompSen extends StatefulWidget {
  //MyHomePage({Key key}) : super(key: key);
  @override
  _CompSenState createState() => _CompSenState();
}
class _CompSenState extends State<CompSen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Completed Received Referra"),
      ),
      body: Center(
        child: Card(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.done),
                title: Text('Prajay Dhoka'),
                subtitle: Text('From - Apollo Hospital, Pune: Ophthalmologists'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Received: 22nd August 21     '),
                  Text('Completed: 29th August 21'),
                  const SizedBox(width: 1),
                  const SizedBox(width: 5),
                ],
              ),
              Divider(
                height: 12.0,
                color: Colors.black,
              ),
              const ListTile(
                leading: Icon(Icons.done),
                title: Text('Prem Bhandari'),
                subtitle: Text('S L Raheja Hospital, Mumbai: Osteopaths'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Received: 15th July 21     '),
                  Text('Completed: 21st July 21'),
                  const SizedBox(width: 1),
                  const SizedBox(width: 5),
                ],
              ),
              Divider(
                height: 10.0,
                color: Colors.black,
              ),
              const ListTile(
                leading: Icon(Icons.done),
                title: Text('Snehal Chordiya'),
                subtitle: Text('From - Jaslok Hospital, Mumbai, Mumbai: Neurologists'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Received: 1st April 21     '),
                  Text('Completed: 9th April 21'),
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
