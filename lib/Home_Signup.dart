import 'package:flutter/material.dart';
import 'Host_Login.dart';

class HomeSignup extends StatelessWidget {
  const HomeSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Host_Signup(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Host_Signup extends StatefulWidget {
  const Host_Signup({super.key});

  @override
  State<Host_Signup> createState() => _Host_SignupState();
}

class _Host_SignupState extends State<Host_Signup> {
  bool _agreeToTerms = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[300],
        title: Center(child: Text('HOST - SIGNUP')),
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
                CustomField(labelText: 'Enter the Phone Number'),
                SizedBox(height: 8.0),
                CustomField(
                    labelText: 'Enter Your Password', obscureText: true),
                SizedBox(height: 8.0),
                CustomField(labelText: 'Confirm Password', obscureText: true),
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
                      'I Agree to terms and conditions',
                      style: TextStyle(color: Colors.blue[900]),
                    ),
                  ],
                ),
                ElevatedButton(
                  child: Text(
                    'SIGN UP',
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
