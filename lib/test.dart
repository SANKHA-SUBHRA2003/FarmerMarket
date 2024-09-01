


/*admincandidlogin*/





import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
      home: AdminCandidLoginPage(),
    );
  }
}

class AdminCandidLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/login_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Foreground content
          Center(
            child: Container(
              padding: EdgeInsets.all(16.0),
              width: 800,
              height: 500,
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
                        ],
                      ),
                    ),
                  ),
                  // Removed the right side content and added the new text and buttons
                  VerticalDivider(color: Colors.grey.shade300, width: 1),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'You want to Enter',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              // Handle admin button action
                            },
                            child: Text('As an Admin'),
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(
                                  double.infinity, 50), // Full width button
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    8.0), // Rounded corners
                              ),
                              backgroundColor: Colors
                                  .blue, // Set the background color to blue
                              foregroundColor:
                                  Colors.white, // Set the text color to white
                            ),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {
                              // Handle candidate button action
                            },
                            child: Text('As a Candidate'),
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(
                                  double.infinity, 50), // Full width button
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    8.0), // Rounded corners
                              ),
                              backgroundColor: Colors
                                  .blue, // Set the background color to blue
                              foregroundColor:
                                  Colors.white, // Set the text color to white
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
          // Social media icons (unchanged)
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

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}






































/*login*/

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(), // Set the login page as the home
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/login_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Foreground content
          Center(
            child: Container(
              padding: EdgeInsets.all(16.0),
              width: 800,
              height: 500,
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
                            'Let\'s Get You In',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Hey there! welcome back!',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    8.0), // Rounded corners for text field
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    8.0), // Rounded corners for text field
                              ),
                            ),
                            obscureText: true,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Forgot password?',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
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
                              foregroundColor:
                                  Colors.white, // Set the text color to white
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

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}




































/*loginadmin*/


import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(), // Set the login page as the home
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/loginadmin.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Foreground content
          Center(
            child: Container(
              padding: EdgeInsets.all(16.0),
              width: 800,
              height: 500,
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
                            'Let\'s Get You In',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Hey there! welcome back!',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    8.0), // Rounded corners for text field
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    8.0), // Rounded corners for text field
                              ),
                            ),
                            obscureText: true,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Forgot password?',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
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
                              foregroundColor:
                                  Colors.white, // Set the text color to white
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

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}




















































/*loginemail*/

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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

class LoginEmail extends StatelessWidget {
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









