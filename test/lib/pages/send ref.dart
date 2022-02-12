import 'package:flutter/material.dart';
import 'package:hack/pages/inpro_sent.dart';
import 'package:hack/pages/pend_sen.dart';
import 'package:hack/pages/rej_sent.dart';
import 'package:hack/pages/comp_sen.dart';
import 'package:hack/pages/rec ref.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Sent Referrals',
      home: SenRef(),
    );
  }
}

class SenRef extends StatefulWidget {
  const SenRef({Key? key}) : super(key: key);

  @override
  _SenRefState createState() => _SenRefState();
}

class _SenRefState extends State<SenRef> {
  // The inital group value
  String _selectedref = 'ref';
  bool navigateToPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Sent Referrals',
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Please select one of the sent referrals types:-'),
              ListTile(
                leading: Radio<String>(
                  value: 'Completed',
                  groupValue: _selectedref,
                  onChanged: (value) {
                    setState(() {
                      _selectedref = value!;
                      navigateToPage = true;
                    });
                    if (navigateToPage) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return CompSen();
                          }));
                    }
                  },
                ),
                title: const Text('Completed'),
              ),
              ListTile(
                leading: Radio<String>(
                  value: 'In Progress',
                  groupValue: _selectedref,
                  onChanged: (value) {
                    setState(() {
                      _selectedref = value!;
                      navigateToPage = true;
                    });
                    if (navigateToPage) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return InProSen();
                          }));
                    }
                  },
                ),
                title: const Text('In Progress'),
              ),
              ListTile(
                leading: Radio<String>(
                  value: 'Rejected',
                  groupValue: _selectedref,
                  onChanged: (value) {
                    setState(() {
                      _selectedref = value!;
                      navigateToPage = true;
                    });
                    if (navigateToPage) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return RejSen();
                          }));
                    }
                  },
                ),
                title: const Text('Rejected'),
              ),
              ListTile(
                leading: Radio<String>(
                  value: 'Pending',
                  groupValue: _selectedref,
                  onChanged: (value) {
                    setState(() {
                      _selectedref = value!;
                      navigateToPage = true;
                    });
                    if (navigateToPage) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return PendSen();
                          }));
                    }
                  },
                ),
                title: const Text('Pending'),
              ),
              // const SizedBox(height: 25),
              // Text(_selectedref == 'male' ? 'Hello gentlement!' : 'Hi lady!')
            ],
          )),
    );
  }
}