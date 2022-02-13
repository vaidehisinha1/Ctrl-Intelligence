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
        title: Text("Rejected Received Referrals"),
      ),
      body: Center(
        child: Card(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.cancel,size: 30, color: Colors.red),
                title: Text('Ravneet Kaur',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('CHC-1: Cardiologist'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Rejected: 16th May 21'),
                  const SizedBox(width: 1),
                  const SizedBox(width: 5),
                ],
              ),
              Divider(
                height: 10.0,
                color: Colors.black,
              ),
              const ListTile(
                leading: Icon(Icons.cancel,size: 30, color: Colors.red,),
                title: Text('Piyush Dhoka',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('CHC-2: Otolaryngologists'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Rejected: 8th May 21'),
                  const SizedBox(width: 1),
                  const SizedBox(width: 5),
                ],
              ),
              Divider(
                height: 10.0,
                color: Colors.black,
              ),
              const ListTile(
                leading: Icon(Icons.cancel,size: 30, color: Colors.red,),
                title: Text('Anand Lunawat',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('PHC-1: Gastroenterologists'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Rejected: 1st May 21'),
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