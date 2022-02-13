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
        title: Text("Rejected Received Referrals"),
      ),
      body: Center(
        child: Card(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.cancel),
                title: Text('Ravneet Kaur'),
                subtitle: Text('CHC-1: Cardiologist'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('16th May 21'),
                  const SizedBox(width: 1),
                  const SizedBox(width: 5),
                ],
              ),
              Divider(
                height: 10.0,
                color: Colors.black,
              ),
              const ListTile(
                leading: Icon(Icons.cancel),
                title: Text('Piyush Dhoka'),
                subtitle: Text('CHC-2: Otolaryngologists'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Revevied: 8th May 21'),
                  const SizedBox(width: 1),
                  const SizedBox(width: 5),
                ],
              ),
              Divider(
                height: 10.0,
                color: Colors.black,
              ),
              const ListTile(
                leading: Icon(Icons.cancel),
                title: Text('Anand Lunawat'),
                subtitle: Text('PHC-1: Gastroenterologists'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Revevied: 1st May 21'),
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
