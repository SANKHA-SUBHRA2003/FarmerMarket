import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginEmail(),
    );
  }
}

class LoginEmail extends StatefulWidget {
  @override
  _LoginEmailState createState() => _LoginEmailState();
}

class _LoginEmailState extends State<LoginEmail> {
  List<double> _topPositions = List<double>.generate(15, (index) => 0.0);
  List<double> _leftPositions = List<double>.generate(15, (index) => 0.0);
  Random _random = Random();
  late double _screenHeight;
  late double _screenWidth;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenHeight = MediaQuery.of(context).size.height;
    _screenWidth = MediaQuery.of(context).size.width;
    _initializePositions(); // Set initial positions
    _startAnimation(); // Start animation immediately
  }

  void _initializePositions() {
    for (int i = 0; i < 15; i++) {
      _topPositions[i] =
          _random.nextDouble() * (_screenHeight - 70); // Subtract image height
      _leftPositions[i] =
          _random.nextDouble() * (_screenWidth - 100); // Subtract image width
    }
  }

  void _startAnimation() {
    Timer.periodic(Duration(seconds: 4), (timer) {
      setState(() {
        _initializePositions(); // Update positions for animation
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage('assets/login_bg.png'), // Background image asset
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Floating animated images
          for (int i = 0; i < 15; i++)
            AnimatedPositioned(
              top: _topPositions[i],
              left: _leftPositions[i],
              duration: Duration(seconds: 4),
              child: Opacity(
                opacity: 0.5,
                child: Image.asset(
                  'assets/floating_image_${i % 10 + 1}.png', // Use 10 images cyclically
                  width: 100,
                  height: 70,
                ),
              ),
            ),
          // Foreground content
          Center(
            child: Container(
              padding: EdgeInsets.all(16.0),
              width: 800,
              height: 600,
              decoration: BoxDecoration(
                color:
                    Colors.white.withOpacity(0.9), // Slightly transparent white
                borderRadius: BorderRadius.circular(16.0), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/logo.png', // Your logo asset
                            width: 400,
                            height: 350,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'FIRST BUDDY',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Your onboarding sidekick :)',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 8.0),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Text(
                              'Email id: janedoe.techy@gmail.com',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  VerticalDivider(color: Colors.grey.shade300, width: 1),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Getting Started',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Let\'s begin by setting a password!',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'New Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    8.0), // Rounded corners for text field
                              ),
                              suffixIcon: Icon(Icons.visibility),
                            ),
                            obscureText: true,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Password must contain at least:',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          SizedBox(height: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildPasswordRequirement('8 characters'),
                              _buildPasswordRequirement(
                                  'One uppercase character'),
                              _buildPasswordRequirement(
                                  'One lowercase character'),
                              _buildPasswordRequirement(
                                  'One special character'),
                              _buildPasswordRequirement('One number character'),
                            ],
                          ),
                          SizedBox(height: 20),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Re-enter New Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    8.0), // Rounded corners for text field
                              ),
                              suffixIcon: Icon(Icons.visibility),
                            ),
                            obscureText: true,
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              // Handle login logic
                            },
                            child: Text('Log In'),
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(
                                  double.infinity, 50), // Full width button
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    8.0), // Rounded corners
                              ),
                              backgroundColor: Colors
                                  .blue, // Set the background color to blue
                              foregroundColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Social media icons
          Positioned(
            bottom: 16,
            right: 16,
            child: Row(
              children: [
                Text('Follow us on: ',
                    style: TextStyle(color: Colors.black, fontSize: 16)),
                SizedBox(width: 8),
                InkWell(
                  onTap: () => _launchURL(
                      'https://www.linkedin.com/company/srmtechofficial/mycompany/'),
                  child: Image.asset('assets/linkedin-logo.png',
                      width: 24, height: 24),
                ),
                SizedBox(width: 8),
                InkWell(
                  onTap: () =>
                      _launchURL('https://www.instagram.com/srmtechofficial/'),
                  child: Image.asset('assets/instagram-logo.png',
                      width: 24, height: 24),
                ),
                SizedBox(width: 8),
                InkWell(
                  onTap: () => _launchURL('https://x.com/SRMTechOfficial'),
                  child:
                      Image.asset('assets/X-logo.png', width: 24, height: 24),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPasswordRequirement(String requirement) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        children: [
          Icon(Icons.circle, size: 8, color: Colors.grey),
          SizedBox(width: 8),
          Text(requirement, style: TextStyle(fontSize: 14, color: Colors.grey)),
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
