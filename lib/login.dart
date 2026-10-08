import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State <Login> createState() =>  _LoginState();
}

class _LoginState extends State<Login> {
    TextEditingController inputEmail = TextEditingController ();
    TextEditingController inputPassword = TextEditingController ();

    final formKey = GlobalKey<FormState>();

    void login() {
    if (!formKey.currentState!.validate()) return;

    if (inputEmail.text.trim() == 'Bintang@gmail.com' && inputPassword.text == '12345') {
      Navigator.pushReplacementNamed(context, '/home');
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Email atau password salah')),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('POINKU'),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: Column(
            children: [

              TextField(
                controller: inputEmail,
                decoration: InputDecoration(
                  hintText: "Masukan Email",
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                    ),
                  ),

                  const SizedBox(height:20),

                  TextField(
                controller: inputPassword,
                decoration: InputDecoration(
                  hintText: "Masukan Password",
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                  ),
                    ),
                  ),


                  const SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: login, 
                    child: const Text("Masuk")
                    )
            ],
              ),
              )
      ),
              );
  }
      }