import 'package:flutter/material.dart';

class CompSen extends StatefulWidget {

  @override
  _CompSenState createState() => _CompSenState();
}
class _CompSenState extends State<CompSen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal[700],
        title: Text("Completed Received Referral"),
      ),
      body: Center(
        child: Card(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.done,color: Colors.green, size: 35,),
                title: Text('Prajay Dhoka',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('From - PHC-2: Ophthalmologists'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Received: 22nd August 21   '),
                  Text('Completed: 29th August 21'),
                  const SizedBox(width: 1),
                  const SizedBox(width: 5),
                ],
              ),
              Divider(
                height: 15.0,
                color: Colors.black,
              ),
              const ListTile(
                leading: Icon(Icons.done, color: Colors.green, size: 35,),
                title: Text('Prem Bhandari',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('From - CHC-3: Osteopaths'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Received: 15th July 21   '),
                  Text('Completed: 21st July 21'),
                  const SizedBox(width: 1),
                  const SizedBox(width: 5),
                ],
              ),
              Divider(
                height: 15.0,
                color: Colors.black,
              ),
              const ListTile(
                leading: Icon(Icons.done,color: Colors.green, size: 35,),
                title: Text('Snehal Chordiya',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('From - JCHC-2: Neurologists'),
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