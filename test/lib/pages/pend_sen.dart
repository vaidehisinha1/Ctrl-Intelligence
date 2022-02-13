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
        backgroundColor: Colors.teal[700],
        title: Text("Pending Sent Referrals"),
      ),
      body: Center(
        child: Card(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.pending,size: 30, color: Colors.lightBlue),
                title: Text('Siddharth Oswal',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('District Hospital-3: Nephrologists'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Sent: 10th April 21'),
                  const SizedBox(width: 1),
                  const SizedBox(width: 5),
                ],
              ),
              Divider(
                height: 10.0,
                color: Colors.black,
              ),
              const ListTile(
                leading: Icon(Icons.pending,size: 30, color: Colors.lightBlue),
                title: Text('Siddhi Oswal',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('District Hospital-1: Oncologists'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Sent: 1st April 21'),
                  const SizedBox(width: 1),
                  const SizedBox(width: 5),
                ],
              ),
              Divider(
                height: 10.0,
                color: Colors.black,
              ),
              const ListTile(
                leading: Icon(Icons.pending,size: 30, color: Colors.lightBlue),
                title: Text('Arpit Balai',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('District Hospital-2: Neurologists'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Sent: 29th March 21'),
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