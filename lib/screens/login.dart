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
    var insertedEmail="";
    var insertedPassword="";
    var correctEmail="correo@test.com";
    var correctPassword="ABC123";
    TextEditingController _passwordController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Parcial III'),
      ),
      body: Container(
        child: Column(
          children: [
            IconButton(onPressed: (){
              showDialog(
                context: context,
                builder: ((context) {
                  return SimpleDialog(
                    title: const Text('Log In'),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    children: [
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'Email',
                        ),
                        onChanged: (value) async {
                          insertedEmail=value;
                        },
                      ),
                      TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          labelText: 'Password',
                        ),
                        onChanged: (value) async {
                          insertedPassword=value;
                        },
                      ),
                      FloatingActionButton(onPressed: (){
                        
                        if(insertedPassword==correctPassword && insertedEmail==correctEmail){
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: ((context) => const HomeScreen())));
                        }
                        setState(() {
                          
                        });
                      },child:Icon(Icons.done),),
                    ],
                  );
                }),
              );
              setState(() {
                
              });
            }, icon: Icon(Icons.login)),
          ]
        ),
      ),
    );
  }
}
