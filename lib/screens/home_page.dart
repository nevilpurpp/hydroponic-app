import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/h_provider.dart'; // Import your Sensor class
import 'dart:developer';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
 

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
   return ChangeNotifierProvider<SensorDataProvider>(
    create: (_) => SensorDataProvider()..readData(), // Initialize and start updates
    child: Consumer<SensorDataProvider>(
      builder: (context, sensorDataProvider, _) {
        return Center(
          child: SizedBox(
            height: 200,
            width: 200,
            child: ListView.builder(
              itemCount: sensorDataProvider.sensorData.length,
              itemBuilder: (context, index) {
                final data = sensorDataProvider.sensorData[index];
                return Text('Temperature: ${data.temperature.toString()}'); 
              },
            ),
          ),
        );
      },
    ),
  );
  }
}
