import 'package:flutter/material.dart';
import '/pages/home_screen.dart';

class EditMed2 extends StatefulWidget {
  const EditMed2({Key? key}) : super(key: key);

  @override
  _EditMed2State createState() => _EditMed2State();
}

class _EditMed2State extends State<EditMed2> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medication Reports'),
        centerTitle: true,
        backgroundColor: Colors.teal[700],),
      body: Form(
        key: _formKey,
        child: Scrollbar(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: AutofillGroup(
              child: Column(
                children: [
                  ...[
                    const Text('Please Enter details  '),
                    TextFormField(
                      initialValue: 'Chronic Diarrhea',
                      autofocus: false,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        labelText: 'Disease diagnosed',
                      ),
                      autofillHints: const [AutofillHints.givenName],
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      initialValue: 'Stage 1',
                      decoration: const InputDecoration(
                        //hintText: 'Stage 1 / Stage 3',
                        labelText: 'Severity',
                      ),
                      autofillHints: const [AutofillHints.familyName],
                    ),
                    TextFormField(
                      initialValue: 'None',
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        labelText: 'Family History ',
                      ),
                      autofillHints: [AutofillHints.email],
                    ),
                    TextFormField(
                      initialValue: '120-80',
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        labelText: 'Blood Pressure Levels',
                      ),
                      autofillHints: [AutofillHints.telephoneNumber],
                    ),
                    TextFormField(
                      initialValue: 'null',
                      keyboardType: TextInputType.streetAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        //hintText: 'dust / pollen / null',
                        labelText: 'Allergy ',
                      ),
                      autofillHints: [AutofillHints.streetAddressLine1],
                    ),
                    TextFormField(
                      initialValue: '95',
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        labelText: 'Oxygen Saturation (SpO2)',
                      ),
                      autofillHints: [AutofillHints.postalCode],
                    ),
                    TextFormField(
                      initialValue: 'Fever',
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        //hintText: 'Sore throat / Null',
                        labelText: 'Symptoms of any other disease',
                      ),
                      autofillHints: [AutofillHints.countryName],
                    ),

                  ].expand(
                        (widget) => [
                      widget,
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => MyHomePage()));
                    },
                    child: Text(
                      'Submit Changes',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
          ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}