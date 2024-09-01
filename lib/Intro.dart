import 'package:flutter/material.dart';
import 'package:safe_wheels/loginpage.dart';
import 'package:safe_wheels/selection.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 128, 203, 145)),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 166, 228, 198),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assests/images/App_Logo.png'),
            CircularButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Selection_1()),
              );
            })
          ],
        ),
      ),
    );
  }
}

class CircularButton extends StatelessWidget {
  final VoidCallback onPressed;

  CircularButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 8, 87, 42),
          borderRadius: BorderRadius.circular(20),
          border:
              Border.all(color: const Color.fromARGB(255, 8, 87, 42), width: 2),
        ),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Text(
          'GET STARTED',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
