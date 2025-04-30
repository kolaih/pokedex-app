//Firebase
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
//Material UI
import 'package:flutter/material.dart';
//Páginas Internas
import 'package:pokedex/firebase_options.dart';
import 'package:pokedex/pages/login_page.dart';
import 'package:pokedex/pages/pokedex.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyCJQ5ScVPeY_-6Or0R1wRLMlSRll3uYKQc",
        authDomain: "pokedex-28249.firebaseapp.com",
        projectId: "pokedex-28249",
        storageBucket: "pokedex-28249.firebasestorage.app",
        messagingSenderId: "632344379012",
        appId: "1:632344379012:web:7bc806adadd2a3c7fbccd1"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
