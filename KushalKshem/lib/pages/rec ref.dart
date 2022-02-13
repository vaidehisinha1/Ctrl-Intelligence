import 'package:flutter/material.dart';
import '/pages/inpro_rec.dart';
import '/pages/pend_rec.dart';
import '/pages/rej_rec.dart';
import '/pages/comp_rec.dart';

class RecRef extends StatefulWidget {
  const RecRef({Key? key}) : super(key: key);

  @override
  _RecRefState createState() => _RecRefState();
}

class _RecRefState extends State<RecRef> {
  String _selectedref = 'ref';
  bool navigateToPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        centerTitle: true,
        title: const Text(
          'Received Referrals',
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
                title: const Text('Completed',style: TextStyle(fontSize: 20)),
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
                title: const Text('In Progress', style: TextStyle(fontSize: 20),),
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