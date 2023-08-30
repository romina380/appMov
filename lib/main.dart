import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_signin/screens/signin_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Inicialización de Firebase para la plataforma web
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: 'AIzaSyAn_7mQAEn0hcj8wczjt4hQvbGvM9zuSnw',
      appId: '1:959560422608:android:5dafc2fbd82cb122ef3ad5',
      messagingSenderId: 'your_messaging_sender_id',
      projectId: 'login-trujillo',
      // Otras opciones específicas de la plataforma web
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignInScreen(),
    );
  }
}
