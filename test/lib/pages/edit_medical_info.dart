import 'package:flutter/material.dart';
class AutofillDemo extends StatefulWidget {
  const AutofillDemo({Key? key}) : super(key: key);

  @override
  _AutofillDemoState createState() => _AutofillDemoState();
}

class _AutofillDemoState extends State<AutofillDemo> {
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
                      initialValue: 'Cardiovascular disease',
                      autofocus: true,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        labelText: 'Disease diagnosed',
                      ),
                      autofillHints: const [AutofillHints.givenName],
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      initialValue: 'Stage B',
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
                      initialValue: '140-90',
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        labelText: 'Blood Pressure Levels',
                      ),
                      autofillHints: [AutofillHints.telephoneNumber],
                    ),
                    TextFormField(
                      initialValue: 'Pollen',
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
                      initialValue: 'None',
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
