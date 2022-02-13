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
                subtitle: Text('From - PHC-2: Ophthalmologists'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Received: 22nd August 21'),
                  Text('Completed: 29th August 21'),
                  const SizedBox(width: 1),
                  const SizedBox(width: 5),
                ],
              ),
              Divider(
                height: 20.0,
                color: Colors.black,
              ),
              const ListTile(
                leading: Icon(Icons.done),
                title: Text('Prem Bhandari'),
                subtitle: Text('From - CHC-3: Osteopaths'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Received: 15th July 21'),
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
                subtitle: Text('From - CHC-2, Mumbai: Neurologists'),
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
