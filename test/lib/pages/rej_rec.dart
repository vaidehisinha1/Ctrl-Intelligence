import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rejected Received Referrals',
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
                subtitle: Text('IPC Heart Care Centre, Mumbai: Cardiologist'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Revevied: 16th May 21'),
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
                subtitle: Text('Pristyn Care, Pune: Otolaryngologists'),
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
                subtitle: Text('Sassoon Hospital, Pune: Gastroenterologists'),
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
