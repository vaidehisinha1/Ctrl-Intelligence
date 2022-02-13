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
          title:new Text('KUSHALKSHEM',textAlign: TextAlign.center,)
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
              child: FlatButton.icon(
                icon: Icon(Icons.add,size: 40,),//icon image
                label: Text('Referral Add',style: TextStyle(color: Colors.white, fontSize: 25)),//text to show in button
                textColor: Colors.white,//button text and icon color.
                color: Colors.green,//button background color
                onPressed: ()  {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => hospital_info()));
                },
              ),
        ),

            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue),
              child: FlatButton.icon(
                icon: Icon(Icons.dynamic_form,size:40),//icon image
                label: Text('Referral Edit',style: TextStyle(color: Colors.white, fontSize: 25)),//text to show in button
                textColor: Colors.white,//button text and icon color.
                color: Colors.green,//button background color
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => EditInfo()));
                },
            ),
            ),

            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue),
              child: FlatButton.icon(
                icon: Icon(Icons.send,size: 40,),//icon image
                label: Text('Referral Sent',style: TextStyle(color: Colors.white, fontSize: 25)),//text to show in button
                textColor: Colors.white,//button text and icon color.
                color: Colors.green,//button background color
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => SenRef()));
                },
              ),
            ),


            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue),
              child: FlatButton.icon(
                icon: Icon(Icons.input_rounded,size:40),//icon image
                label: Text('Referral Received',style: TextStyle(color: Colors.white, fontSize: 25)),//text to show in button
                textColor: Colors.white,//button text and icon color.
                color: Colors.green,//button background color
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => RecRef()));
                },
              ),
            ),
          ],
        ),
      ),
      drawer: new Drawer(
        backgroundColor: Colors.orange[200],
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              decoration: BoxDecoration(color:Colors.green[400],),
              accountName: new Text('Kamla Nehru Hospital'),
              accountEmail: new Text('hospital@mail.com'),
              currentAccountPicture: Image.asset('assets/K.png')
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

