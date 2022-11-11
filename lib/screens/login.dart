// Implementar login con la validación de datos que se tiene en el archivo services/data.dart

import 'package:flutter/material.dart';
import 'package:parcial3/screens/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (() => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: ((context) => const HomeScreen())))),
        child: const Text('Iniciar sesión'));
  }
}
