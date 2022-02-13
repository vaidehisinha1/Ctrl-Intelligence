import 'package:flutter/material.dart';

class PendSen extends StatefulWidget {
  @override
  _PendSenState createState() => _PendSenState();
}
class _PendSenState extends State<PendSen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[700],
          title: Text("Pending Received Referrals"),
        ),
        body: Center(
          child: Card(
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.pending,size: 30, color: Colors.lightBlue),
                  title: Text('Darshan Medankar',style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text('CHC-2: Podiatrists'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text('Recevied: 10th April 21'),
                    const SizedBox(width: 1),
                    const SizedBox(width: 5),
                  ],
                ),
                Divider(
                  height: 15.0,
                  color: Colors.black,
                ),
                const ListTile(
                  leading: Icon(Icons.pending,size: 30, color: Colors.lightBlue),
                  title: Text('Rishi Purohit',style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text('PHC-3: Pulmonologists'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text('Received: 1st January 21'),
                    const SizedBox(width: 1),
                    const SizedBox(width: 5),
                  ],
                ),
                Divider(
                  height: 15.0,
                  color: Colors.black,
                ),
                const ListTile(
                  leading: Icon(Icons.pending,size: 30, color: Colors.lightBlue),
                  title: Text('Grace',style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text('PHC-1: Neurologists'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text('Recevied: 29th December 20'),
                    const SizedBox(width: 1),
                    const SizedBox(width: 5),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}