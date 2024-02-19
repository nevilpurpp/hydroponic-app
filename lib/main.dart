import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hydroponic_app/provider/h_provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'constants/style/themes.dart';
import 'constants/utils.dart';
import 'screens/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  runApp(
    ChangeNotifierProvider(
      create: (context) => SensorDataProvider(),
      child:  const MyApp(), 
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      home: HomePage(),
    );
  }
}
