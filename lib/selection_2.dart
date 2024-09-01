import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'Selection_4.dart';
import 'selection_3.dart';
import 'selection.dart';

class Selection2 extends StatelessWidget {
  const Selection2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 128, 203, 145)),
        useMaterial3: true,
      ),
      home: Selection_12(),
    );
  }
}

class Selection_12 extends StatefulWidget {
  const Selection_12({super.key});

  @override
  State<Selection_12> createState() => _Selection_12State();
}

class _Selection_12State extends State<Selection_12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[300],
        title: Center(child: Text('SELECT TYPE OF VEHICLE')),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp1()),
            );
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Center(
                child: CustomCard(
              imageAsset: "assests/images/EV.png",
              title: "E-Vehicle",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Selection4()),
                );
              },
            )),
          ),
          Expanded(
            child: Center(
                child: CustomCard(
                    imageAsset: "assests/images/Bike.png",
                    title: "Petrol or Diesel",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Selection3()),
                      );
                    })),
          ),
        ],
      ),
    );
  }
}
