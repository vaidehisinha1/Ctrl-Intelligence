import 'package:flutter/material.dart';

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
        backgroundColor: Colors.teal[700],
        title: Text("Rejected Sent Referrals"),
      ),
      body: Center(
        child: Card(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.cancel,size: 30, color: Colors.red),
                title: Text('Sahil Madhav',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('District Hospital - 2: Endocrinologists'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Rejected: 8th March 21'),
                  const SizedBox(width: 1),
                  const SizedBox(width: 5),
                ],
              ),
              Divider(
                height: 15.0,
                color: Colors.black,
              ),
              const ListTile(
                leading: Icon(Icons.cancel,size: 30, color: Colors.red),
                title: Text('Ram Pande',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('District Hospital - 1: Hematologists'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Rejected: 1st March 21'),
                  const SizedBox(width: 1),
                  const SizedBox(width: 5),
                ],
              ),
              Divider(
                height: 15.0,
                color: Colors.black,
              ),
              const ListTile(
                leading: Icon(Icons.cancel,size: 30, color: Colors.red),
                title: Text('James John',style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text('District Hospital - 3: Infectious Disease Specialists'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Rejected: 27th February 21'),
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
