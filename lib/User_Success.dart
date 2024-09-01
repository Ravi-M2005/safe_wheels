import 'package:flutter/material.dart';
import 'package:safe_wheels/Host_ServiceSelection.dart';
import 'Host_Login.dart';
import 'selection_2.dart';

class UserSuccessPage extends StatelessWidget {
  const UserSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserSuccess_Page(),
    );
  }
}

class UserSuccess_Page extends StatefulWidget {
  const UserSuccess_Page({super.key});

  @override
  State<UserSuccess_Page> createState() => _HostSuccess_PageState();
}

class _HostSuccess_PageState extends State<UserSuccess_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color(0xFFC8E6C9), // Adjust this color to match the background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 30.0,
              backgroundColor: Colors.blue,
              child: Icon(Icons.check, size: 30.0, color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              'Success!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Congratulations USER! You have successfully authenticated.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Handle continue press
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Selection2()),
                );
              },
              child: Text('CONTINUE', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
