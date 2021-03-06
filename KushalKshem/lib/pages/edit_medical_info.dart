import 'package:flutter/material.dart';
import '/pages/home_screen.dart';

class EditMed extends StatefulWidget {
  const EditMed({Key? key}) : super(key: key);

  @override
  _EditMedState createState() => _EditMedState();
}

class _EditMedState extends State<EditMed> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        title: const Text('Medication Reports'),
        centerTitle: true,
        ),
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
                      initialValue: 'Cardiovascular disease',
                      autofocus: false,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        labelText: 'Disease diagnosed',
                      ),
                      autofillHints: const [AutofillHints.givenName],
                    ),
                    TextFormField(
                      initialValue: 'Stage B',
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
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
                      initialValue: '140-90',
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: '120/80',
                        labelText: 'Blood Pressure Levels',
                      ),
                      autofillHints: [AutofillHints.telephoneNumber],
                    ),
                    TextFormField(
                      initialValue: 'Pollen',
                      keyboardType: TextInputType.streetAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
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
                      initialValue: 'Null',
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(

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