import 'package:flutter/material.dart';

class InProSen extends StatefulWidget {

  @override
  _InProSenState createState() => _InProSenState();
}

class _InProSenState extends State<InProSen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
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
                title: Text('Adesh Ghule',style: TextStyle(fontWeight: FontWeight.bold),),
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
                title: Text('Shree Bohara',style: TextStyle(fontWeight: FontWeight.bold),),
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
                title: Text('Ekta Kapoor',style: TextStyle(fontWeight: FontWeight.bold),),
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
