import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // For formatting dates

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add Commodity',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        scaffoldBackgroundColor: Color(0xFFFFF7E4), // Background color
      ),
      home: AddCommodityPage(),
    );
  }
}

class AddCommodityPage extends StatefulWidget {
  @override
  _AddCommodityPageState createState() => _AddCommodityPageState();
}

class _AddCommodityPageState extends State<AddCommodityPage> {
  final TextEditingController _itemNameController = TextEditingController();
  final TextEditingController _stockController = TextEditingController();
  final TextEditingController _harvestDateController = TextEditingController();
  final TextEditingController _expiryDateController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _minPriceController = TextEditingController();
  final TextEditingController _maxPriceController = TextEditingController();
  String _selectedWeightUnit = 'Kgs';

  Future<void> _selectDate(
      BuildContext context, TextEditingController controller) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        controller.text = DateFormat('yyyy-MM-dd').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Commodity'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFFDEEB5), // Light yellow background
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      children: [
                        // Item Name
                        TextField(
                          controller: _itemNameController,
                          decoration: InputDecoration(
                            labelText: 'Item Name',
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                        SizedBox(height: 16),

                        // Stock Available
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: _stockController,
                                decoration: InputDecoration(
                                  labelText: 'Stock Available',
                                  border: OutlineInputBorder(),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            DropdownButton<String>(
                              value: _selectedWeightUnit,
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedWeightUnit = newValue!;
                                });
                              },
                              items: <String>[
                                'Kgs',
                                'Quintals',
                                'Tonnes'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),

                        // Harvest Date
                        TextField(
                          controller: _harvestDateController,
                          readOnly: true,
                          decoration: InputDecoration(
                            labelText: 'Harvest Date',
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          onTap: () =>
                              _selectDate(context, _harvestDateController),
                        ),
                        SizedBox(height: 16),

                        // Estimated Expiry Date
                        TextField(
                          controller: _expiryDateController,
                          readOnly: true,
                          decoration: InputDecoration(
                            labelText: 'Estimated Expiry Date',
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          onTap: () =>
                              _selectDate(context, _expiryDateController),
                        ),
                        SizedBox(height: 16),

                        // Description
                        TextField(
                          controller: _descriptionController,
                          maxLines: 3,
                          decoration: InputDecoration(
                            labelText: 'Description',
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                        SizedBox(height: 16),

                        // Set Price
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: _minPriceController,
                                decoration: InputDecoration(
                                  labelText: 'Min Price',
                                  border: OutlineInputBorder(),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Expanded(
                              child: TextField(
                                controller: _maxPriceController,
                                decoration: InputDecoration(
                                  labelText: 'Max Price',
                                  border: OutlineInputBorder(),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),

                        // Submit Button
                        ElevatedButton(
                          onPressed: () {
                            // Add submit functionality here
                          },
                          child: Text('Submit'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Color(0xFFF9D342), // Yellow button color
                            foregroundColor: Colors.black, // Text color
                            minimumSize:
                                Size(double.infinity, 50), // Full width button
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
