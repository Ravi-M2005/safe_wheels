import 'package:flutter/material.dart';
import 'HomePage2.dart';
import 'Host_Verification.dart';
import 'Home_ResetPass.dart';
import 'Home_Signup.dart';

class HostLogin extends StatelessWidget {
  const HostLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Host_Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Host_Login extends StatefulWidget {
  const Host_Login({super.key});

  @override
  State<Host_Login> createState() => _Host_LoginState();
}

class _Host_LoginState extends State<Host_Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[300],
        title: Center(child: Text('HOST - LOGIN')),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp2()),
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
                CustomField(labelText: 'Password', obscureText: true),
                SizedBox(
                  height: 50.0,
                ),
                TextButton(
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.blue[900]),
                  ),
                  onPressed: () {
                    // Handle forgot password action
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HostResetPassword()),
                    );
                  },
                ),
                ElevatedButton(
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    // Handle login action
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HostVerification()),
                    );
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                ),
                TextButton(
                  child: Text('New User? SignUp Here',
                      style: TextStyle(color: Colors.blue[900])),
                  onPressed: () {
                    // Handle sign up action
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Host_Signup()),
                    );
                  },
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
