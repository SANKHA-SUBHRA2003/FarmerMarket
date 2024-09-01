import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Document Upload',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FreshDocumentUploadPage(),
    );
  }
}

class FreshDocumentUploadPage extends StatefulWidget {
  @override
  _DocumentUploadPageState createState() => _DocumentUploadPageState();
}

class _DocumentUploadPageState extends State<FreshDocumentUploadPage> {
  final _formKey = GlobalKey<FormState>();

  // State variables to hold the selected file names
  String _aadharFileName = 'No file selected';
  String _panFileName = 'No file selected';
  String _passportFileName = 'No file selected';
  String _passportPhotoFileName = 'No file selected';
  String _rationCardFileName = 'No file selected';
  String _tenthMarkSheetFileName = 'No file selected';
  String _twelfthMarkSheetFileName = 'No file selected';
  String _ugDegreeFileName = 'No file selected';
  String _pgDegreeFileName = 'No file selected';
  String _certificatesFileName = 'No file selected';

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlue.shade50,
        padding: EdgeInsets.symmetric(horizontal: 80.0),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(),
                _buildDocumentSection('General Documents', [
                  _buildUploadField('Aadhar', _aadharFileName, (fileName) {
                    setState(() {
                      _aadharFileName = fileName;
                    });
                  }),
                  _buildUploadField('PAN', _panFileName, (fileName) {
                    setState(() {
                      _panFileName = fileName;
                    });
                  }),
                  _buildUploadField('Passport', _passportFileName, (fileName) {
                    setState(() {
                      _passportFileName = fileName;
                    });
                  }),
                  _buildUploadField(
                      'Passport Size Photo', _passportPhotoFileName,
                      (fileName) {
                    setState(() {
                      _passportPhotoFileName = fileName;
                    });
                  }),
                  _buildUploadField('Ration Card', _rationCardFileName,
                      (fileName) {
                    setState(() {
                      _rationCardFileName = fileName;
                    });
                  }),
                ]),
                _buildDocumentSection('Educational Documents', [
                  _buildUploadField('10th Mark Sheet', _tenthMarkSheetFileName,
                      (fileName) {
                    setState(() {
                      _tenthMarkSheetFileName = fileName;
                    });
                  }),
                  _buildUploadField(
                      '12th Mark Sheet', _twelfthMarkSheetFileName, (fileName) {
                    setState(() {
                      _twelfthMarkSheetFileName = fileName;
                    });
                  }),
                  _buildUploadField('UG Degree', _ugDegreeFileName, (fileName) {
                    setState(() {
                      _ugDegreeFileName = fileName;
                    });
                  }),
                  _buildUploadField('PG Degree', _pgDegreeFileName, (fileName) {
                    setState(() {
                      _pgDegreeFileName = fileName;
                    });
                  }),
                  _buildUploadField(
                      'Certificates (if any)', _certificatesFileName,
                      (fileName) {
                    setState(() {
                      _certificatesFileName = fileName;
                    });
                  }),
                ]),
                Row(
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (value) {
                        setState(() {
                          _isChecked = value ?? false;
                        });
                      },
                    ),
                    Expanded(
                      child: Text(
                        'I hereby declare that the above information is true and correct to my knowledge and belief.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Center(
                  child: ElevatedButton(
                    onPressed: _isChecked
                        ? () {
                            if (_formKey.currentState!.validate()) {
                              // Process form submission
                            }
                          }
                        : null, // Disable button if checkbox is not checked
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.yellow, // Set button color to yellow
                    ),
                    child: Text('Submit'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Document Upload',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () {},
                  color: Colors.black,
                ),
                IconButton(
                  icon: Icon(Icons.message),
                  onPressed: () {},
                  color: Colors.black,
                ),
                IconButton(
                  icon: Icon(Icons.account_circle),
                  onPressed: () {},
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDocumentSection(String title, List<Widget> documentFields) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Column(
                children: documentFields,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUploadField(
      String documentName, String fileName, Function(String) onFileSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(documentName),
          ),
          Text(fileName, style: TextStyle(color: Colors.grey)),
          SizedBox(width: 8),
          ElevatedButton(
            onPressed: () => _showFilePicker(documentName, onFileSelected),
            child: Text('Upload'),
          ),
        ],
      ),
    );
  }

  void _showFilePicker(
      String documentName, Function(String) onFileSelected) async {
    // Open file picker
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: [
        'pdf',
        'jpg',
        'jpeg',
        'png',
        'doc',
        'docx',
        'xls',
        'xlsx'
      ],
    );

    if (result != null) {
      // File selected
      PlatformFile file = result.files.first;

      // Update file name
      onFileSelected(file.name);
    } else {
      // User canceled the picker
      onFileSelected('No file selected');
    }
  }
}
