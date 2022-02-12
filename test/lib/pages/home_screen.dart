import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hack/pages/Login.dart';
import 'package:hack/pages/send ref.dart';
import 'package:hack/pages/rec ref.dart';
import 'package:hack/pages/hospital_info.dart';
import 'package:hack/pages/edit_info.dart';
//Pages
import './about.dart';
import './profile.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          backgroundColor: Colors.lightBlue[400],
          title:new Text('HOSPITAL REFERAL SYSTEM',textAlign: TextAlign.center,)
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 4,
              mainAxisSpacing: 8,
              childAspectRatio: 2.8
          ),
          children: [
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => hospital_info()));
                },
                child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.add),
                          Text("Referral Add",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          )
                      ],
                    )
              ),
            ),

            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue),
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => EdInfo()));
                  },
                  child:
                  Column(
                    children: [
                      Icon(Icons.add),
                      Text(
                        'Referral Edit',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ],
                  )
              ),
            ),

            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue),
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => SenRef()));
                  },
                  child:
                  Column(
                    children: [
                      Icon(Icons.add),
                      Text(
                        'Referral Sent',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ],
                  )
              ),
            ),

            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue),
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => RecRef()));
                  },
                  child:
                  Column(
                    children: [
                      Icon(Icons.add),
                      Text(
                        'Referral Received',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
      drawer: new Drawer(
        backgroundColor: Colors.lightBlue[300],
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('HOSPITAL NAME'),
              accountEmail: new Text('hospital@mail.com'),
              currentAccountPicture: new CircleAvatar(
              ),
            ),
            new ListTile(
              title: new Text('ABOUT PAGE'),
              onTap:(){
                Navigator.of(context).pop();
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context)=>new AboutPage())
                );
              },
            ),

            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            new ListTile(
              title: new Text('PROFILE'),
              onTap:(){
                Navigator.of(context).pop();
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context)=>new Profile())
                );
              },
            ),

            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            new ListTile(
              title: new Text('DOCUMENTS'),
              onTap:(){
                Navigator.of(context).pop();
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context)=>new AboutPage())
                );
              },
            ),

            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            new ListTile(
              title: new Text('SETTINGS'),
              onTap:(){
                Navigator.of(context).pop();
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context)=>new AboutPage())
                );
              },
            ),
            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            new ListTile(
              title: new Text('LOG OUT'),
              onTap:(){
                Navigator.of(context).pop();
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context)=>new LoginDemo())
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
