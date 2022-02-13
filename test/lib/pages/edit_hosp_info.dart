import 'package:flutter/material.dart';

// Demonstrates how to use autofill hints. The full list of hints is here:
// https://github.com/flutter/engine/blob/master/lib/web_ui/lib/src/engine/text_editing/autofill_hint.dart
class hospital_info extends StatefulWidget {
  const hospital_info({Key? key}) : super(key: key);

  @override
  _hospital_infoState createState() => _hospital_infoState();
}

class _hospital_infoState extends State<hospital_info> {
  final _formKey = GlobalKey<FormState>();
   String _currentItemSelected = 'Cardiologists';
  final _currencies = ['Select a department','Allergists', 'Anesthesiologists', 'Cardiologists', 'Colon and Rectal Surgeons', 'Dermatologists','Dentist','Endocrinologists','Gastroenterologists', 'Hematologists','Infectious Disease Specialists','Internists','Medical Geneticists','Nephrologists','Neurologists','Obstetricians and Gynecologists','Oncologists','Ophthalmologists','Osteopaths','Otolaryngologists','Orthopaedic surgeon','Pathologists','Pediatricians','Physiatrists','Plastic Surgeons','Podiatrists','Preventive Medicine Specialists','Psychiatrists','Pulmonologists','Radiologists','Rheumatologists','Sports Medicine Specialists','General Surgeons','Urologists','Veterinarian'];
  
  String _current = 'PHC-2';
  final _hosp = ['Select a hospital', 'PHC-1','PHC-2','PHC-3','CHC-1','CHC-2','CHC-3','District Hospital-1','District Hospital-2','District Hospital-3'];
  //final _hosp = ['Select a hospital','Aditya Birla Memorial Hospital, Pune','Apollo Hospital, Pune','Breach Candy Hospital, Mumbai','Deccan Multispeciality Hardikar Hospital, Pune','IPC Heart Care Centre, Mumbai','Jaslok Hospital, Mumbai','Nair Hospital, Mumbai','Poona Hospital, Pune','Pristyn Care, Pune','Sassoon Hospital, Pune','S L Raheja Hospital, Mumbai'];
  // String? _current = 'Rupees';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Hospital Info'),
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
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
