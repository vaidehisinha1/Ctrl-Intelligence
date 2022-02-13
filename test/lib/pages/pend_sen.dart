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
      body: Center(
        child: Card(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.pending),
                title: Text('Siddharth Oswal'),
                subtitle: Text('Poona Hospital, Pune: Nephrologists'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Send: 10th April 21'),
                  const SizedBox(width: 1),
                  const SizedBox(width: 5),
                ],
              ),
              Divider(
                height: 10.0,
                color: Colors.black,
              ),
              const ListTile(
                leading: Icon(Icons.pending),
                title: Text('Siddhi Oswal'),
                subtitle: Text('Poona Hospital, Pune: Oncologists'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Send: 1st April 21'),
                  const SizedBox(width: 1),
                  const SizedBox(width: 5),
                ],
              ),
              Divider(
                height: 10.0,
                color: Colors.black,
              ),
              const ListTile(
                leading: Icon(Icons.pending),
                title: Text('Arpit Balai'),
                subtitle: Text('Pristyn Care, Pune: Neurologists'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Send: 29th March 21'),
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
