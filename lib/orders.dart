
import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Orders'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Card(
            child: Row(
              children: [
                Image.asset('assets/image/mobile.png',
                    width: 100, height: 100),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('iPhone 17 Pro Max'),
                    Text('Silver'),
                    Text('₹1,05,000'),
                    Text('Order Delivered',
                        style: TextStyle(color: Colors.green)),
                  ],
                ),
              ],
            ),
          ),

          Card(
            child: Row(
              children: [
                Image.asset('assets/image/laptop.png',
                    width: 100, height: 100),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('MacBook Pro'),
                    Text('Silver'),
                    Text('₹95,000'),
                    Text('Delivery Pending',
                        style: TextStyle(color: Colors.orange)),
                  ],
                ),
              ],
            ),
          ),
          Divider(),
     Text('no more orders',
     textAlign: TextAlign.center,
     style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold

     ),
     )
          

        ],
      ),
    );
  }
}
