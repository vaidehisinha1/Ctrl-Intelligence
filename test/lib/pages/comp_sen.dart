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
        title: Text("Accepted Sent Referral"),
      ),
      body: Center(
        child: Card(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.done,color: Colors.green, size: 35),
                title: Text('Disha Seth',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('District Hospital-1: Cardiologist'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Sent: 22nd June 21     '),
                  Text('Completed: 29th June 21'),
                  const SizedBox(width: 1),
                  const SizedBox(width: 5),
                ],
              ),
              Divider(
                height: 15.0,
                color: Colors.black,
              ),
              const ListTile(
                leading: Icon(Icons.done,color: Colors.green, size: 35),
                title: Text('Ravi Shankar',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('District Hospital-3: Gastroenterologists'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Sent: 15th May 21     '),
                  Text('Completed: 21st May 21'),
                  const SizedBox(width: 1),
                  const SizedBox(width: 5),
                ],
              ),
              Divider(
                height: 15.0,
                color: Colors.black,
              ),
              const ListTile(
                leading: Icon(Icons.done,color: Colors.green, size: 35),
                title: Text('Ram Dev', style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('District Hospital-2: Neurologists'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Sent: 1st April 21     '),
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
