import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '/pages/Login.dart';
import '/pages/send ref.dart';
import '/pages/rec ref.dart';
import '/pages/hospital_info.dart';
import '/pages/edit_info.dart';
import './profile.dart';
import '/main.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          backgroundColor: Colors.teal[700],
          title:new Text('KUSHALKSHEM',textAlign: TextAlign.center,),
          actions: [IconButton(onPressed: () {}, icon: Image.asset('assets/OLogo.png'))]
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
                  backgroundColor: MaterialStateProperty.all(Colors.cyan[300]),
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
                  backgroundColor: MaterialStateProperty.all(Colors.indigo[300]),
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
                  backgroundColor: MaterialStateProperty.all(Colors.cyan[300]),
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
                  backgroundColor: MaterialStateProperty.all(Colors.indigo[300]),
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
        backgroundColor: Colors.white,
        child:
        ListView(
          children: <Widget>[
            Container(
              width : 200,
              height: 200,
              decoration: BoxDecoration(
                  image: new DecorationImage(image: AssetImage('assets/K.png'), fit: BoxFit.cover)
              ),
            ),

            Container(
              width : 200,
              height: 100,
                color: Colors.grey[500],
              child:
              Column(
                children: [
                  Text('\n\nKamala Nehru Hospital\nhospital@mail.com',style: (TextStyle(fontWeight: FontWeight.bold, fontSize: 15)), )
                ],
              )
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

            Container(
              color: Colors.redAccent,
              child: new ListTile(
                title: new Text('LOG OUT'),
                onTap:(){
                  Navigator.of(context).pop();
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context)=>new MyApp())
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

