import 'package:flutter/material.dart';
class AutofillDemo3 extends StatefulWidget {
  const AutofillDemo3({Key? key}) : super(key: key);

  @override
  _AutofillDemo3State createState() => _AutofillDemo3State();
}

class _AutofillDemo3State extends State<AutofillDemo3> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medication Reports'),
        centerTitle: true,
        backgroundColor: Colors.purple[300],),
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
                      initialValue: 'Multiple Sclerosis',
                      autofocus: true,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        labelText: 'Disease diagnosed',
                      ),
                      autofillHints: const [AutofillHints.givenName],
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      initialValue: 'Stage 2(RRMS)',
                      decoration: const InputDecoration(
                        //hintText: 'Stage 1 / Stage 3',
                        labelText: 'Severity',
                      ),
                      autofillHints: const [AutofillHints.familyName],
                    ),
                     TextFormField(
                      initialValue: 'Mother - Had MS',
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
                      initialValue: '98',
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        labelText: 'Oxygen Saturation (SpO2)',
                      ),
                      autofillHints: [AutofillHints.postalCode],
                    ),
                    TextFormField(
                      initialValue: 'Headache',
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