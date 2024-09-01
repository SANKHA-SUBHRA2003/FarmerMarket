import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asked Questions',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AskedQuestionsPage(),
    );
  }
}

class AskedQuestionsPage extends StatefulWidget {
  @override
  _AskedQuestionsPageState createState() => _AskedQuestionsPageState();
}

class _AskedQuestionsPageState extends State<AskedQuestionsPage> {
  final List<String> _questions = [
    'Question 1',
    'Question 2',
    'Question 3',
    'Question 4',
  ];

  final Map<String, bool> _expandedQuestions = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlue.shade50,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            SizedBox(height: 30), // Space between header and ellipse
            Center(
              child: _buildRoundedEllipse(),
            ),
            SizedBox(height: 30), // Space between ellipse and list
            Expanded(child: _buildQuestionsList()),
          ],
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
            'Asked Questions',
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

  Widget _buildRoundedEllipse() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
          60.0), // Maintain the high border radius for the ellipse effect
      child: Container(
        width: 400, // Increased width to make it more long breadthwise
        height: 35, // Reduced height to make it slimmer
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  // Handle FAQ button press
                },
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'FAQ',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  // Handle Previously Asked Questions button press
                },
                child: Container(
                  color: Colors.yellow,
                  child: Center(
                    child: Text(
                      'Previously Asked Questions',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow:
                          TextOverflow.ellipsis, // Ensure text fits in one line
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuestionsList() {
    return ListView(
      children: _questions.map((question) {
        return Card(
          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: ExpansionTile(
            title: Text(question),
            children: [
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text('Answer'),
                color: Colors.white,
                height: 120, // Fixed height for the dropdown content
              ),
            ],
            onExpansionChanged: (expanded) {
              setState(() {
                _expandedQuestions[question] = expanded;
              });
            },
          ),
        );
      }).toList(),
    );
  }
}
