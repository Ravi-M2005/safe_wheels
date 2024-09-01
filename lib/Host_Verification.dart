import 'package:flutter/material.dart';
import 'package:safe_wheels/Host_Success.dart';
import 'Host_Login.dart';

class HostVerification extends StatelessWidget {
  const HostVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Host_Verification(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Host_Verification extends StatefulWidget {
  const Host_Verification({super.key});

  @override
  State<Host_Verification> createState() => _Host_VerificationState();
}

class _Host_VerificationState extends State<Host_Verification> {
  bool _agreeToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[300],
        title: Center(child: Text('HOST - VERIFICATION')),
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
                CustomField(labelText: 'Select Document Type'),
                SizedBox(height: 8.0),
                CustomField(
                  labelText: 'Upload the Document ',
                ),
                SizedBox(height: 8.0),
                CustomField(
                  labelText: 'Enter 6 Digit OTP',
                ),
                SizedBox(height: 8.0),
                SizedBox(
                  height: 50.0,
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value:
                          _agreeToTerms, // This should be a boolean variable in your state
                      onChanged: (bool? value) {
                        setState(() {
                          _agreeToTerms = value!;
                        });
                      },
                    ),
                    Text(
                      'I Agree that the document uploaded by me is valid',
                      style: TextStyle(color: Colors.blue[900]),
                    ),
                  ],
                ),
                ElevatedButton(
                  child: Text(
                    'VERIFY',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    // Handle login action
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HostSuccessPage()),
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
