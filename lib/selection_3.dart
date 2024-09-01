import 'package:flutter/material.dart';
import 'selection.dart';

class Selection3 extends StatelessWidget {
  const Selection3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 128, 203, 145)),
        useMaterial3: true,
      ),
      home: Selection_13(),
    );
  }
}

class Selection_13 extends StatefulWidget {
  const Selection_13({super.key});

  @override
  State<Selection_13> createState() => _Selection_13State();
}

class _Selection_13State extends State<Selection_13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Center(
                child: CustomCard(
              imageAsset: "assests/images/Puncture.png",
              title: "Tyre Puncture",
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => StudentsLogin()),
                // );
              },
            )),
          ),
          Expanded(
            child: Center(
                child: CustomCard(
                    imageAsset: "assests/images/Pump.png",
                    title: "Fuel Outage",
                    onPressed: () {})),
          ),
          Expanded(
            child: Center(
                child: CustomCard(
                    imageAsset: "assests/images/Others.png",
                    title: "Others",
                    onPressed: () {})),
          ),
        ],
      ),
    );
  }
}
