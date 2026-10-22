
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
        
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            SizedBox(height: 20),

            CircleAvatar(
              radius: 45,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, size: 60, color: Colors.white),
            ),

            SizedBox(height: 25),

            ListTile(
              leading: Icon(Icons.person_outline),
              title: Text('My Account'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(12),
              ),
            ),

            SizedBox(height: 10),

            ListTile(
              leading: Icon(Icons.receipt_long_outlined),
              title: Text('Orders'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(12),
              ),
            ),

            SizedBox(height: 10),

            ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: Text(' Address'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(12),
              ),
            ),

            SizedBox(height: 10),

            ListTile(
              leading: Icon(Icons.notifications_none),
              title: Text('Notification'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(12),
              ),
            ),

            SizedBox(height: 10),

            ListTile(
              leading: Icon(Icons.headset_mic_outlined),
              title: Text('Contact Us'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(12),
              ),
            ),

            SizedBox(height: 10),

            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
