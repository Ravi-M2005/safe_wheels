// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'HomePage2.dart';
import 'HomePage.dart';
import 'loginpage.dart';

Color _Green = Color(0xFF08572A);

Color _green = Colors.lightGreen;

class Selection_1 extends StatelessWidget {
  const Selection_1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 128, 203, 145)),
        useMaterial3: true,
      ),
      home: Selection_11(),
    );
  }
}

class Selection_11 extends StatefulWidget {
  const Selection_11({super.key});

  @override
  State<Selection_11> createState() => _Selection_11State();
}

class _Selection_11State extends State<Selection_11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Center(
                child: CustomCard(
              imageAsset: "assests/images/user.png",
              title: "USER",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp1()),
                );
              },
            )),
          ),
          Expanded(
            child: Center(
                child: CustomCard(
                    imageAsset: "assests/images/Host.png",
                    title: "HOST",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp2()),
                      );
                    })),
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String imageAsset;
  final String title;
  final VoidCallback onPressed;

  const CustomCard({
    Key? key,
    required this.imageAsset,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.green,
        elevation: 2.5,

        // Adjust this height to reduce the card size

        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  imageAsset,
                  fit: BoxFit.contain,
                  width: double.tryParse("200.0"),
                  height: 80, // Adjust this based on your needs
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
