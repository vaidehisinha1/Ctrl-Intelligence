import 'package:flutter/material.dart';

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
        backgroundColor: Colors.teal[700],
        title: Text("In Progress Received Referrals"),
      ),
      body: Center(
        child: Card(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.priority_high,size: 30, color: Colors.orange,),
                title: Text('Kriti Sanon',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('PHC - 3: Nephrologists'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Recevied: 15th November 21'),
                  const SizedBox(width: 1),
                  const SizedBox(width: 5),
                ],
              ),
              Divider(
                height: 10.0,
                color: Colors.black,
              ),
              const ListTile(
                leading: Icon(Icons.priority_high,size: 30, color: Colors.orange,),
                title: Text('Nitin Oswal',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('PHC-1: Pathologists'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Recevied: 1st November 21'),

                  const SizedBox(width: 1),
                  const SizedBox(width: 5),
                ],
              ),
              Divider(
                height: 10.0,
                color: Colors.black,
              ),
              const ListTile(
                leading: Icon(Icons.priority_high, size: 30, color: Colors.orange,),
                title: Text('Pooja Patil',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('CHC-2: Psychiatrists'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Recevied: 11th October 21'),
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