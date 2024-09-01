import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add Candidate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  void _showAddCandidateDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AddCandidateDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showAddCandidateDialog(context);
          },
          child: Text('+'),
        ),
      ),
    );
  }
}

class AddCandidateDialog extends StatefulWidget {
  @override
  _AddCandidateDialogState createState() => _AddCandidateDialogState();
}

class _AddCandidateDialogState extends State<AddCandidateDialog> {
  bool sendNotificationMail = false;
  String _otp = _generateOtp();

  static String _generateOtp() {
    const length = 8;
    const chars =
        'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    Random rand = Random();

    return List.generate(length, (index) => chars[rand.nextInt(chars.length)])
        .join();
  }

  void _refreshOtp() {
    setState(() {
      _otp = _generateOtp();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(0),
      content: Container(
        width: 400,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(4.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Add Candidate',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Basic Information',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'First Name*',
                        border: OutlineInputBorder(),
                        hintText: 'First Name',
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Last Name*',
                        border: OutlineInputBorder(),
                        hintText: 'Last Name',
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Email*',
                        border: OutlineInputBorder(),
                        hintText: 'Email',
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      readOnly: true,
                      controller: TextEditingController(text: _otp),
                      decoration: InputDecoration(
                        labelText: 'One Time Password*',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: _refreshOtp,
                      child: Text('Refresh OTP'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blue,
                        side: BorderSide(color: Colors.blue),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      children: [
                        Icon(Icons.info_outline, size: 16),
                        SizedBox(width: 8.0),
                        Text(
                            'User will be forced to set a password after signing in.'),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'APPLICATION',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0),
                    Text('Application not yet assigned.'),
                    SizedBox(height: 8.0),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Add Application',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Add'),
                        ),
                        SizedBox(width: 8.0),
                        OutlinedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Cancel'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
