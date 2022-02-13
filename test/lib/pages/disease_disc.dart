import 'package:flutter/material.dart';
import 'package:hack/pages/home_screen.dart';
import 'package:intl/intl.dart' as intl;

class DiseaseDisc extends StatefulWidget {
  const DiseaseDisc({Key? key}) : super(key: key);

  @override
  _DiseaseDiscState createState() => _DiseaseDiscState();
}

class _DiseaseDiscState extends State<DiseaseDisc> {
  final _formKey = GlobalKey<FormState>();
  String title = '';
  String description = '';
  DateTime date = DateTime.now();
  double maxValue = 0;
  bool? brushedTeeth = false;
  bool enableFeature = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        title: const Text('Detailed Diagnosis'),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Scrollbar(
          child: Align(
            alignment: Alignment.topCenter,
            child: Card(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ...[
                        TextFormField(
                          decoration: const InputDecoration(
                            filled: true,
                            hintText: ' Cancer - Stage 2',
                            labelText: 'Disease description and severity',
                          ),
                          onChanged: (value) {
                            setState(() {
                              title = value;
                            });
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            filled: true,
                            hintText: 'Enter a description...',
                            labelText: 'Detailed diagonosis and medication planned',
                          ),
                          onChanged: (value) {
                            description = value;
                          },
                          maxLines: 5,
                        ),
                        _FormDatePicker(
                          date: date,
                          onChanged: (value) {
                            setState(() {
                              date = value;
                            });
                          },
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                          ],
                        ),
                        OutlineButton.icon(
                          icon: Icon(Icons.file_upload_outlined,size: 25,),//icon image
                          label: Text('Upload Additional Documents',style: TextStyle(color: Colors.black, fontSize: 15)),//text to show in button
                          textColor: Colors.black,//button text and icon color.
                          color: Colors.white,//button background color
                          onPressed: ()  {},
                          shape: ContinuousRectangleBorder(side: BorderSide(style:BorderStyle.solid)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Checkbox(
                              value: brushedTeeth,
                              onChanged: (checked) {
                                setState(() {
                                  brushedTeeth = checked;
                                });
                              },
                            ),
                            Text('I confirm the above diagnosis to \n the best of my knowledge\n ',
                                style: Theme.of(context).textTheme.subtitle1),
                          ],
                        ),

                      ].expand(
                            (widget) => [
                          widget,
                          const SizedBox(
                            height: 15,
                          )
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                        child:
                        FlatButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            Navigator.push(
                                context, MaterialPageRoute(builder: (_) => MyHomePage()));
                          },
                          child: Text(
                            'Submit',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      ),
                      // Container(
                      //   height: 20,
                      //   width: 100,
                      //   decoration: BoxDecoration(
                      //       color: Colors.blue),
                      //   child: FlatButton.icon(
                      //     icon: Icon(Icons.file_upload_outlined,size: 20,),//icon image
                      //     label: Text('Upload Additional Documents',style: TextStyle(color: Colors.black, fontSize: 10)),//text to show in button
                      //     textColor: Colors.black,//button text and icon color.
                      //     color: Colors.white,//button background color
                      //     onPressed: ()  {},
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _FormDatePicker extends StatefulWidget {
  final DateTime date;
  final ValueChanged<DateTime> onChanged;

  const _FormDatePicker({
    required this.date,
    required this.onChanged,
  });

  @override
  _FormDatePickerState createState() => _FormDatePickerState();
}

class _FormDatePickerState extends State<_FormDatePicker> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Date',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              intl.DateFormat.yMd().format(widget.date),
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
        TextButton(
          child: const Text('Edit'),
          onPressed: () async {
            var newDate = await showDatePicker(
              context: context,
              initialDate: widget.date,
              firstDate: DateTime(1900),
              lastDate: DateTime(2100),
            );

            // Don't change the date if the date picker returns null.
            if (newDate == null) {
              return;
            }

            widget.onChanged(newDate);
          },
        )
      ],
    );
  }
}