import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hackaweb/profile.dart';
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
            mainAxisSpacing: 4,
            childAspectRatio: 2

          ),
          children: [
            Container(color: Colors.lightBlue[200],child: Center(child:Text('REFERRAL ADD',style: TextStyle(fontSize: 30,),),) ),
            Container(color: Colors.lightBlue[200],child: Center(child:Text('REFERRAL EDIT',style: TextStyle(fontSize: 30,),) ) ),
            Container(color: Colors.lightBlue[200],child: Center(child:Text('REFERRAL SENT',style: TextStyle(fontSize: 30,),) ) ),
            Container(color: Colors.lightBlue[200],child: Center(child:Text('REFERRAL RECIEVED',style: TextStyle(fontSize: 30,),),) ),
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
                    builder: (BuildContext context)=>new AboutPage())
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
