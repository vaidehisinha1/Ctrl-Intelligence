import 'package:flutter/material.dart';
import 'package:hack/pages/home_screen.dart';


class hospital_infoo extends StatefulWidget {
  const hospital_infoo({Key? key}) : super(key: key);

  @override
  _hospital_infooState createState() => _hospital_infooState();
}

class _hospital_infooState extends State<hospital_infoo> {
  final _formKey = GlobalKey<FormState>();
  String _currentItemSelected = 'Gastroenterologists';
  final _currencies = ['Select a department','Allergists', 'Anesthesiologists', 'Cardiologists', 'Colon and Rectal Surgeons', 'Dermatologists','Dentist','Endocrinologists','Gastroenterologists', 'Hematologists','Infectious Disease Specialists','Internists','Medical Geneticists','Nephrologists','Neurologists','Obstetricians and Gynecologists','Oncologists','Ophthalmologists','Osteopaths','Otolaryngologists','Orthopaedic surgeon','Pathologists','Pediatricians','Physiatrists','Plastic Surgeons','Podiatrists','Preventive Medicine Specialists','Psychiatrists','Pulmonologists','Radiologists','Rheumatologists','Sports Medicine Specialists','General Surgeons','Urologists','Veterinarian'];

  String _current = 'CHC-1';

  final _hosp = ['Select a hospital', 'PHC-1','PHC-2','PHC-3','CHC-1','CHC-2','CHC-3','District Hospital-1','District Hospital-2','District Hospital-3'];
  // String? _current = 'Rupees';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        title: const Text('Edit Hospital Information'),
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
                    Align(
                      alignment: Alignment.topLeft,
                      child: DropdownButton(
                        hint: Text('sample'),
                        isExpanded: true,
                        items: _hosp.map((String dropDownStringItem) {
                          return DropdownMenuItem(
                            value:dropDownStringItem,
                            child:  Text(dropDownStringItem),
                          );
                        } ).toList(),
                        onChanged: (String? newValueSelected) {
                          setState(() {
                            // ignore: unnecessary_this
                            this._current = newValueSelected!;
                          });
                        },
                        value: _current,
                      ),
                    ),
                    // TextFormField(
                    //   autofocus: true,
                    //   textInputAction: TextInputAction.next,
                    //   decoration: const InputDecoration(
                    //     hintText: 'Apollo Hospital',
                    //     labelText: 'Hospital Name',
                    //   ),
                    //   autofillHints: const [AutofillHints.givenName],
                    // ),
                    // TextFormField(
                    //   textInputAction: TextInputAction.next,
                    //   decoration: const InputDecoration(
                    //     hintText: 'diabetologist',
                    //     labelText: 'Which Department',
                    //   ),
                    //   autofillHints: const [AutofillHints.familyName],
                    // ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: DropdownButton(
                        isExpanded: true,
                        items: _currencies.map((String dropDownStringItem) {
                          return DropdownMenuItem(
                            value:dropDownStringItem,
                            child:  Text(dropDownStringItem),
                          );
                        } ).toList(),
                        onChanged: (String? newValueSelected) {
                          setState(() {
                            // ignore: unnecessary_this
                            this._currentItemSelected = newValueSelected!;
                          });
                        },
                        value: _currentItemSelected,
                      ),
                    ),
                    const TextField(
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'Shree',
                        labelText: 'Doctor name(Any specific)',
                      ),
                      autofillHints: [AutofillHints.email],
                    ),
                  ].expand(
                        (widget) => [
                      widget,
                      const SizedBox(
                        height: 24,
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