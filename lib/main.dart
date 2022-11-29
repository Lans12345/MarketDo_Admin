import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:marketdo_admin/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBjivpCdVNxvxjPpBwqSgoeLAk99NsUrc0",
          appId: "1:408743856582:web:c5c94d57da4a4ac6cb4ac7",
          messagingSenderId: "408743856582",
          projectId: "market-do"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
