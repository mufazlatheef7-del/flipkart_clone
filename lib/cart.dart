
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Cart')),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Card(
            child: Row(
              children: [
                Image.asset('assets/image/mobile.png',
                 width: 100,
                  height: 120),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('iPhone 16',
                     style: TextStyle(
                      fontSize: 18)),
                    Text('Silver'),
                    Text('₹1,05,000'),
                  ],
                ),
              ],
            ),
          ),

          Card(
            child: Row(
              children: [
                Image.asset('assets/image/laptop.png',
                 width: 100,
                  height: 120),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('MacBook Pro',
                     style: TextStyle(
                      fontSize: 18)),
                    Text('Silver'),
                    Text('₹95,000'),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 15),

          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Price Details', 
                style: TextStyle(
                  fontSize: 20)),
                SizedBox(height: 10),
                Text('Price: ₹2,00,000'),
                Text('Discount: ₹1,000'),
                Divider(),
                Text('Total Amount: ₹1,99,000',
                    style: TextStyle(
                      fontSize: 18)),
                SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Place Order'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
