import 'package:flutter/material.dart';
import 'edit_hosp_info.dart';
import 'edit_medical_info.dart';
import 'edit_hosp_info2.dart';
import 'edit_hosp_info3.dart';
import 'edit_medical_info2.dart';
import 'edit_medical_info3.dart';

class EditInfo extends StatelessWidget {
  const EditInfo({Key? key}) : super(key: key);
  static const String _title = 'Edit Referral Information';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[700],title: const Text(_title),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.edit),
                title: Text('Ram Kumar'),
                subtitle: Text('PHC-2: Cardiologist\n2nd July 21'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('Edit hospital info'),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => hospital_info()));
                    },
                  ),
                  const SizedBox(width: 1),
                  TextButton(
                    child: const Text('Edit medical info'),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EditMed()));
                    },
                  ),
                  const SizedBox(width: 5),
                ],
              ),
              Divider(
                height: 10.0,
                color: Colors.black,
              ),
              const ListTile(
                leading: Icon(Icons.edit),
                title: Text('Ravi Shankar'),
                subtitle: Text('CHC-1: Gastroenterologists\n3rd August 21'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('Edit hospital info'),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => hospital_infoo()));
                    },
                  ),
                  const SizedBox(width: 1),
                  TextButton(
                    child: const Text('Edit medical info'),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EditMed2()));
                    },
                  ),
                  const SizedBox(width: 5),
                ],
              ),
      Divider(
        height: 10.0,
        color: Colors.black,
      ),
              const ListTile(
                leading: Icon(Icons.edit),
                title: Text('Laxmi Patil'),
                subtitle: Text('CHC-2: Neurologists\n20th October'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('Edit hospital info'),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => hospital_info3()));
                    },
                  ),
                  const SizedBox(width: 1),
                  TextButton(
                    child: const Text('Edit medical info'),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EditMed1()));
                    },
                  ),
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
