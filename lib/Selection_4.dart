import 'package:flutter/material.dart';
import 'selection.dart';

class Selection4 extends StatelessWidget {
  const Selection4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 128, 203, 145)),
        useMaterial3: true,
      ),
      home: Selection_14(),
    );
  }
}

class Selection_14 extends StatefulWidget {
  const Selection_14({super.key});

  @override
  State<Selection_14> createState() => _Selection_14State();
}

class _Selection_14State extends State<Selection_14> {
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
                    imageAsset: "assests/images/Battery_Low.png",
                    title: "Battery Low",
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
