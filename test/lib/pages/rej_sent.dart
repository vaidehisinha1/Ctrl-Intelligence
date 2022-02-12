import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rejected Sent Referrals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RejSen(),
    );
  }
}

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
        title: Text("Rejected Sent Referrals"),
      ),
      body: Center(
      child: Card(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.cancel),
              title: Text('Disha Seth'),
              subtitle: Text('Apollo Hospital, Pune: Cardiologist'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('Send: 8th March 21'),
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
              title: Text('Ravi Shankar'),
              subtitle: Text('Sassoon Hospital, Pune: Gastroenterologists'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('Send: 8th March 21'),
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
              title: Text('Laxmi Patil'),
              subtitle: Text('Nair Hospital, Mumbai: Neurologists\n20th October'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('Send: 8th March 21'),
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
