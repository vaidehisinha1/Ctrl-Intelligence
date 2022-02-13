import 'package:flutter/material.dart';
import 'package:hack/pages/inpro_sent.dart';
import 'package:hack/pages/pend_sen.dart';
import 'package:hack/pages/rej_sent.dart';
import 'package:hack/pages/comp_sen.dart';
import 'package:hack/pages/rec ref.dart';

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
              const Text('Please select one of the sent referrals types:-\n',style: TextStyle(fontSize: 20)),
              ListTile(
                leading: Radio<String>(
                  value: 'Accepted',
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
                title: const Text('Accepted',style: TextStyle(fontSize: 20)),
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
                title: const Text('Rejected',style: TextStyle(fontSize: 20)),
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
                title: const Text('Pending',style: TextStyle(fontSize: 20)),
              ),

            ],
          )),
    );
  }
}