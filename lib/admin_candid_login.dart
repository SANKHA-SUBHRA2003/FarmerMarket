import 'package:flutter/material.dart';
import 'buyerlogin.dart';
import 'sellerlogin.dart';
import 'sellernewlogin.dart'; // Ensure this import is present

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E Kisan',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        scaffoldBackgroundColor: Color(0xFFFFF7E4), // Background color
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => EKisanLoginPage(),
        '/buyer': (context) => BuyerLoginPage(),
        '/seller': (context) => SellerLoginPage(), // Route to SellerLoginPage
      },
    );
  }
}

class EKisanLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png', // Update to the correct logo path
                width: 100,
                height: 100,
              ),
              SizedBox(height: 16),
              Text(
                'E Kisan',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Color(0xFFFDEEB5), // Light yellow background
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/buyer');
                      },
                      child: Text('Buyer Login'),
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
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/seller');
                      },
                      child: Text('Seller Login'),
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
        ),
      ),
    );
  }
}

class BuyerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9D342), // Dark yellow background
      appBar: AppBar(
        title: Text('Buyer'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text(
          'Buyer Page',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
    );
  }
}
