import 'package:flutter/material.dart';

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
                subtitle: Text('District Hospital-3: Nephrologists'),
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
                subtitle: Text('District Hospital-1: Oncologists'),
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
                subtitle: Text('District Hospital-2: Neurologists'),
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
