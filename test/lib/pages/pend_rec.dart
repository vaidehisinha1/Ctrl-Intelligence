import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pending Received Referrals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PendSen(),
    );
  }
}

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
              title: Text('Disha Seth'),
              subtitle: Text('Apollo Hospital, Pune: Cardiologist'),
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
              title: Text('Ravi Shankar'),
              subtitle: Text('Sassoon Hospital, Pune: Gastroenterologists'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('Recevied: 1th April 21'),
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
              title: Text('Laxmi Patil'),
              subtitle: Text('Nair Hospital, Mumbai: Neurologists'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('Recevied: 29th March 21'),
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
