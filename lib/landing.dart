import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductPage(),
    );
  }
}

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int quantity = 1;
  double price = 127.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Description'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back action
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/bomba_rice.jpg'), // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            // Seller and Product Info
            Text(
              'Mr. R. Kuppuswamy - Chennai, TamilNadu',
              style: TextStyle(fontSize: 12.0, color: Colors.grey),
            ),
            SizedBox(height: 5),
            Text(
              'Bomba Rice',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // About Product Section
            Text(
              'About Bomba Rice',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Bomba rice is a variety of short-grain rice renowned for its ability to absorb water and retain its shape after cooking. It is traditionally used in Spanish dishes like paella.',
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 20),
            // About Seller Section
            Text(
              'About R. Kuppuswamy',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Mr. R. Kuppuswamy is a renowned rice producer based in Chennai, TamilNadu, known for his quality and authentic products sourced directly from farmers.',
              style: TextStyle(fontSize: 14.0),
            ),
            Spacer(),
            // Footer with Price and Quantity
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '₹ ${price.toStringAsFixed(2)}/kg',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                // Quantity Selector
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        if (quantity > 1) {
                          setState(() {
                            quantity--;
                          });
                        }
                      },
                      icon: Icon(Icons.remove),
                    ),
                    Text(quantity.toString()),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          quantity++;
                        });
                      },
                      icon: Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
            // Action Buttons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle add to cart action
                    },
                    child: Text('Add to Cart'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange, // Background color
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle negotiate action
                    },
                    child: Text('Negotiate'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow[800], // Background color
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
