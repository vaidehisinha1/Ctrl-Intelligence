import 'package:flutter/material.dart';

class PendSen extends StatefulWidget {
  //MyHomePage({Key key}) : super(key: key);
  @override
  _PendSenState createState() => _PendSenState();
}
class _PendSenState extends State<PendSen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pending Received Referrals"),
        ),
        body: Center(
          child: Card(
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.pending),
                  title: Text('Darshan Medankar'),
                  subtitle: Text('Deccan Multispeciality Hardikar Hospital, Pune: Podiatrists'),
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
                  height: 10.0,
                  color: Colors.black,
                ),
                const ListTile(
                  leading: Icon(Icons.pending),
                  title: Text('Rishi Purohit'),
                  subtitle: Text('Breach Candy Hospital, Mumbai: Pulmonologists'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text('1st January 21'),
                    const SizedBox(width: 1),
                    const SizedBox(width: 5),
                  ],
                ),
                Divider(
                  height: 2.0,
                  color: Colors.black,
                ),
                const ListTile(
                  leading: Icon(Icons.pending),
                  title: Text('Grace'),
                  subtitle: Text('Pristyn Care, Pune: Neurologists'),
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