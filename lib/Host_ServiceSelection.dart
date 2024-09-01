import 'package:flutter/material.dart';
import 'HomePage2.dart';
import 'selection.dart';

class HostServiceselection extends StatelessWidget {
  const HostServiceselection({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Host_ServiceSelection(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Host_ServiceSelection extends StatefulWidget {
  const Host_ServiceSelection({super.key});

  @override
  State<Host_ServiceSelection> createState() => _Host_ServiceSelectionState();
}

class _Host_ServiceSelectionState extends State<Host_ServiceSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[300],
        title: Center(child: Text('SELECT THE TYPE OF SERVICE')),
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
      body: Column(
        children: [
          Expanded(
            child: Center(
                child: CustomCard(
              imageAsset: "assests/images/Pump.png",
              title: "Filling Station",
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => MyApp1()),
                // );
              },
            )),
          ),
          Expanded(
            child: Center(
                child: CustomCard(
                    imageAsset: "assests/images/Pump.png",
                    title: "Mechanic Shop",
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
