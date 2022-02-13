import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hack/pages/Login.dart';
import 'package:hack/pages/send ref.dart';
import 'package:hack/pages/rec ref.dart';
import 'package:hack/pages/hospital_info.dart';
import 'package:hack/pages/edit_info.dart';
import './profile.dart';

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
          title:new Text('KUSHALKSHEM',textAlign: TextAlign.center,),
          actions: [IconButton(onPressed: () {}, icon: Image.asset('assets/Logo.png'))]
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
            ElevatedButton.icon(
                icon: Icon(Icons.add,size: 40,),//icon image
                label: Text('Referral Add',style: TextStyle(color: Colors.white, fontSize: 25)),//text to show in button
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  )
                )
                ,onPressed: ()  {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => hospital_info()));
                },
              ),

            ElevatedButton.icon(
              icon: Icon(Icons.dynamic_form,size: 40,),//icon image
              label: Text('Referral Edit',style: TextStyle(color: Colors.white, fontSize: 25)),//text to show in button
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  )
              )
              ,onPressed: ()  {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => EditInfo()));
            },
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.send,size: 40,),//icon image
              label: Text('Sent Referrals',style: TextStyle(color: Colors.white, fontSize: 25)),//text to show in button
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  )
              )
              ,onPressed: ()  {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => SenRef()));
            },
            ),

            ElevatedButton.icon(
              icon: Icon(Icons.input_rounded,size: 40,),//icon image
              label: Text('Received Referrals',style: TextStyle(color: Colors.white, fontSize: 25)),//text to show in button
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  )
              )
              ,onPressed: ()  {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => RecRef()));
            },
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
              accountName: new Text('Kamala Nehru Hospital'),
              accountEmail: new Text('hospital@mail.com'),
              currentAccountPicture: Image.asset('assets/K.png')
            ),

            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            new ListTile(
              title: new Text('ABOUT US'),
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

