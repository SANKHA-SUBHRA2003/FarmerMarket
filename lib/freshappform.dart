import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Application Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FreshApplicationFormPage(),
    );
  }
}

class FreshApplicationFormPage extends StatefulWidget {
  @override
  _ApplicationFormPageState createState() => _ApplicationFormPageState();
}

class _ApplicationFormPageState extends State<FreshApplicationFormPage> {
  final _formKey = GlobalKey<FormState>();

  // Controllers for form fields
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _weddingDateController = TextEditingController();
  final TextEditingController _passportExpiryController =
      TextEditingController();
  final TextEditingController _educationStartController =
      TextEditingController();
  final TextEditingController _educationEndController = TextEditingController();
  final TextEditingController _familyDobController = TextEditingController();

  String? _selectedGender;
  String? _selectedFamilyGender;

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
                _buildSection('Basic Info', [
                  _buildTextField('First Name', 'First Name', true),
                  _buildTextField('Last Name', 'Last Name', true),
                  _buildTextField('Email', 'Email', true),
                  _buildTextField('Father\'s Name', 'Father\'s Name', true),
                  _buildTextField('Mother\'s Name', 'Mother\'s Name', true),
                  _buildTextField(
                      'Guardian\'s Name', 'Guardian\'s Name', false),
                  _buildTextField('Place of Birth', 'Place of Birth', true),
                  _buildTextField('Blood Group', 'Blood Group', true),
                  _buildDatePicker('Date of Birth', _dobController, true),
                  _buildGenderDropdown(true),
                  _buildTextField('Marital Status', 'Marital Status', true),
                  _buildTextField('Spouse Name', 'Spouse Name', false),
                  _buildDatePicker(
                      'Wedding Date', _weddingDateController, false),
                  _buildTextField('Phone Number', 'Phone Number', true),
                  _buildTextField('Aadhar', 'Aadhar', true),
                  _buildTextField('PAN', 'PAN', true),
                  _buildTextField('Passport', 'Passport', false),
                  _buildDatePicker(
                      'Passport Expiry', _passportExpiryController, false),
                  _buildTextField(
                      'Emergency Contact', 'Emergency Contact', true),
                ]),
                _buildSection('Present Address', [
                  _buildTextField('Address Line 1', 'Address Line 1', true),
                  _buildTextField('Street', 'Street', true),
                  _buildTextField('City', 'City', true),
                  _buildTextField('State', 'State', true),
                  _buildTextField('Country', 'Country', true),
                  _buildTextField('Zip Code', 'Zip Code', true),
                ]),
                _buildSection('Permanent Address', [
                  _buildTextField('Address Line 1', 'Address Line 1', true),
                  _buildTextField('Address Line 2', 'Address Line 2', true),
                  _buildTextField('Street', 'Street', true),
                  _buildTextField('City', 'City', true),
                  _buildTextField('State', 'State', true),
                  _buildTextField('Country', 'Country', true),
                  _buildTextField('Zip Code', 'Zip Code', true),
                ]),
                _buildSection('Educational Details', [
                  _buildTextField('Institute to University',
                      'Institute to University', true),
                  _buildTextField('Degree/Diploma', 'Degree/Diploma', true),
                  _buildTextField('Specialization', 'Specialization', true),
                  _buildDatePicker(
                      'Start Date', _educationStartController, true),
                  _buildDatePicker('End Date', _educationEndController, true),
                ]),
                _buildSection('Family Member Details for Insurance', [
                  _buildTextField('Name', 'Name', true),
                  _buildTextField('Relation', 'Relation', true),
                  _buildDatePicker('Date of Birth', _familyDobController, true),
                  _buildFamilyGenderDropdown(true),
                  _buildTextField('Phone Number', 'Phone Number', true),
                  _buildTextField('Email', 'Email', true),
                  _buildTextField('Address', 'Address', true),
                  _buildTextField('Marital Status', 'Marital Status', true),
                  _buildTextField(
                      'Employment Status', 'Employment Status', true),
                  _buildTextField('Dependent Status', 'Dependent Status', true),
                ]),
                _buildSection('Bank Details', [
                  _buildTextField('Bank Name', 'Bank Name', true),
                  _buildTextField('Account Number', 'Account Number', true),
                  _buildTextField('IFSC Code', 'IFSC Code', true),
                ]),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Process form submission
                      }
                    },
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
            'Application Form',
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

  Widget _buildSection(String title, List<Widget> children) {
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
                children: children,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hint, bool isRequired) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: isRequired ? _buildRequiredLabel(label) : label,
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        validator: (value) {
          if (isRequired && (value == null || value.isEmpty)) {
            return 'This field is required';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildDatePicker(
      String label, TextEditingController controller, bool isRequired) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        readOnly: true,
        decoration: InputDecoration(
          labelText: isRequired ? _buildRequiredLabel(label) : label,
          hintText: 'MM/DD/YYYY',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime(2100),
          );

          if (pickedDate != null) {
            setState(() {
              controller.text = DateFormat('MM/dd/yyyy').format(pickedDate);
            });
          }
        },
        validator: (value) {
          if (isRequired && (value == null || value.isEmpty)) {
            return 'This field is required';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildGenderDropdown(bool isRequired) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          labelText: isRequired ? _buildRequiredLabel('Gender') : 'Gender',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        value: _selectedGender,
        onChanged: (newValue) {
          setState(() {
            _selectedGender = newValue;
          });
        },
        items: ['Male', 'Female', 'Other']
            .map((gender) => DropdownMenuItem<String>(
                  value: gender,
                  child: Text(gender),
                ))
            .toList(),
        validator: (value) {
          if (isRequired && (value == null || value.isEmpty)) {
            return 'This field is required';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildFamilyGenderDropdown(bool isRequired) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          labelText: isRequired ? _buildRequiredLabel('Gender') : 'Gender',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        value: _selectedFamilyGender,
        onChanged: (newValue) {
          setState(() {
            _selectedFamilyGender = newValue;
          });
        },
        items: ['Male', 'Female', 'Other']
            .map((gender) => DropdownMenuItem<String>(
                  value: gender,
                  child: Text(gender),
                ))
            .toList(),
        validator: (value) {
          if (isRequired && (value == null || value.isEmpty)) {
            return 'This field is required';
          }
          return null;
        },
      ),
    );
  }

  String _buildRequiredLabel(String label) {
    return '$label *';
  }
}
