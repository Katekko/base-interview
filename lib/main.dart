import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  void signIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Questão 1')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: loginController,
              decoration: const InputDecoration(label: Text('Login')),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(label: Text('Password')),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: signIn, child: const Text('Sign in'))
          ],
        ),
      ),
    );
  }
}
