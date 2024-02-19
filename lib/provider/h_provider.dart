import 'dart:developer';

import 'package:flutter/material.dart';
import '../constants/utils.dart';
import '../models/sensor_data.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
class SensorDataProvider extends ChangeNotifier {
  List<SensorData> _sensorData = [];
  
  List<SensorData> get sensorData => _sensorData;

  Future<void> readData() async {
    final realtimeChannel = Utils().supabase.channel('fish_data');
  realtimeChannel
      .onPostgresChanges(
          event: PostgresChangeEvent.all,
          schema: 'public',
          table: 'maintable',
          callback: (payload) {
         final newSensorData = SensorData.fromJson(payload.newRecord.length.toString() as Map<String, dynamic>); 
    _sensorData.add(newSensorData);
    notifyListeners(); 
           log('Sensor Data: $newSensorData');  
          })
      .subscribe();
//print(newSensorData);
notifyListeners(); 
  }
    
}
