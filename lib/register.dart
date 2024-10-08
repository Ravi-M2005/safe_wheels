import 'package:flutter/material.dart';
import 'package:safe_wheels/loginpage.dart';
import 'HomePage.dart';
import 'Host_Login.dart';

class UserSignup extends StatelessWidget {
  const UserSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: User_Signup(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class User_Signup extends StatefulWidget {
  const User_Signup({super.key});

  @override
  State<User_Signup> createState() => _Host_SignupState();
}

class _Host_SignupState extends State<User_Signup> {
  bool _agreeToTerms = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[300],
        title: Center(child: Text('USER - SIGNUP')),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StudentsLogin()),
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
                CustomField(labelText: 'Enter Your name'),
                SizedBox(height: 8.0),
                CustomField(labelText: 'Enter Your Phone Number'),
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

class CustomField extends StatelessWidget {
  final String labelText;
  final bool obscureText;

  CustomField({required this.labelText, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
