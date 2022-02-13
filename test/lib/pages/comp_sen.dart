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
        title: Text("Completed Sent Referral"),
      ),
      body: Center(
        child: Card(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.done),
                title: Text('Disha Seth'),
                subtitle: Text('Apollo Hospital, Pune: Cardiologist'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Send: 22nd June 21     '),
                  Text('Completed: 29th June 21'),
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
                title: Text('Ravi Shankar'),
                subtitle: Text('Sassoon Hospital, Pune: Gastroenterologists'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Send: 15th May 21     '),
                  Text('Completed: 21st May 21'),
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
                title: Text('Ram Dev'),
                subtitle: Text('Nair Hospital, Mumbai: Neurologists\n20th October'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Send: 1st April 21     '),
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
