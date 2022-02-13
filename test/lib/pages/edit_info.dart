import 'package:flutter/material.dart';
import 'edit_hosp_info.dart';
import 'edit_medical_info.dart';
import 'edit_hosp_info2.dart';
import 'edit_hosp_info3.dart';


class EditInfo extends StatelessWidget {
  const EditInfo({Key? key}) : super(key: key);
  static const String _title = 'Edit Referal info';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(_title),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.edit),
                title: Text('Ram Kumar'),
                subtitle: Text('Apollo Hospital, Pune: Cardiologist\n2nd July 21'),
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
                subtitle: Text('Sassoon Hospital, Pune: Gastroenterologists\n3rd August 21'),
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
                title: Text('Laxmi Patil'),
                subtitle: Text('Nair Hospital, Mumbai: Neurologists\n20th October'),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EditMed()));
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
