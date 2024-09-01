import 'package:flutter/material.dart';
import 'Host_Login.dart';

class HostResetPassword extends StatelessWidget {
  const HostResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Host_Reset(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Host_Reset extends StatefulWidget {
  const Host_Reset({super.key});

  @override
  State<Host_Reset> createState() => _Host_ResetState();
}

class _Host_ResetState extends State<Host_Reset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[300],
        title: Center(child: Text('HOST - RESET PASSWORD')),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HostLogin()),
            );
          },
        ),
      ),
      body: Stack(
        children: <Widget>[
          // Light green background color
          Container(
            color: Colors.lightGreen[300],
          ),
          // Background image
          Opacity(
            opacity: 0.1,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assests/images/App_Logo.png'), // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Login form
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                CustomField(labelText: 'Enter the Shop name'),
                SizedBox(height: 8.0),
                CustomField(
                    labelText: 'Enter Your Password', obscureText: true),
                SizedBox(height: 8.0),
                CustomField(labelText: 'Confirm Password', obscureText: true),
                SizedBox(height: 8.0),
                CustomField(labelText: 'Enter the Phone Number'),
                SizedBox(height: 8.0),
                CustomField(labelText: 'Enter the 6 Digit OTP'),
                SizedBox(height: 8.0),
                SizedBox(
                  height: 50.0,
                ),
                ElevatedButton(
                  child: Text(
                    'RESET PASSWORD',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    // Handle login action
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HostLogin()),
                    );
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
