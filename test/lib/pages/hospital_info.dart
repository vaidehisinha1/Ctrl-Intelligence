import 'package:flutter/material.dart';
import 'package:hack/pages/patient_info.dart';

class hospital_info extends StatefulWidget {
  const hospital_info({Key? key}) : super(key: key);

  @override
  _hospital_infoState createState() => _hospital_infoState();
}

class _hospital_infoState extends State<hospital_info> {
  final _formKey = GlobalKey<FormState>();
  String _currentItemSelected = 'Select a department';
  final _currencies = ['Select a department','Allergists', 'Anesthesiologists', 'Cardiologists', 'Colon and Rectal Surgeons', 'Dermatologists','Dentist','Endocrinologists','Gastroenterologists', 'Hematologists','Infectious Disease Specialists','Internists','Medical Geneticists','Nephrologists','Neurologists','Obstetricians and Gynecologists','Oncologists','Ophthalmologists','Osteopaths','Otolaryngologists','Orthopaedic surgeon','Pathologists','Pediatricians','Physiatrists','Plastic Surgeons','Podiatrists','Preventive Medicine Specialists','Psychiatrists','Pulmonologists','Radiologists','Rheumatologists','Sports Medicine Specialists','General Surgeons','Urologists','Veterinarian'];

  String _current = 'Select a hospital';
  final _hosp = ['Select a hospital', 'PHC-1','PHC-2','PHC-3','CHC-1','CHC-1','CHC-2','CHC-3','District Hospital-1','District Hospital-2','District Hospital-3'];
  // String? _current = 'Rupees';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a new referal'),
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
                            context, MaterialPageRoute(builder: (_) => AutofillDemo()));
                      },
                      child: Text(
                        'Next Page',
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
