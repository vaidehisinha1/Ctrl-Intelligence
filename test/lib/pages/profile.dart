import 'package:flutter/material.dart';
class Profile extends StatefulWidget {

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
        title: new Text('PROFILE'),
    )
      body: Padding(
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: [Text('\nKAMLA NEHRU HOSPITAL', textAlign: TextAlign.left,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Text('Government Hospital, Pune, Maharashtra',textAlign: TextAlign.left, style: TextStyle(fontSize:20,fontWeight: FontWeight.bold)),
                  Text('\nADDRESS:\n Mangalwar Peth Rd, near Kasba Post Office, Gandhinagar,Mangalwar Peth, Kasba Peth, Pune ,Maharashtra 411002',textAlign: TextAlign.center, style: TextStyle(fontSize:20)),
                  Text('\nSTATUS: \nOpen 24 Hours ',textAlign: TextAlign.center,style: TextStyle(fontSize: 20,),),
                  Text('\nCONTACT:\n 020 2550 8500',textAlign: TextAlign.center,style: TextStyle(fontSize: 20,),),
                  Text('\nOTHER  INFO:\n COVID-19 vaccine available',textAlign: TextAlign.center,style: TextStyle(fontSize: 20,),)
                ],
              ),
            )
    );
  }
}
