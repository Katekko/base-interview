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
  final cepController = TextEditingController();
  final logradouroController = TextEditingController();
  final bairroController = TextEditingController();
  final cidadeController = TextEditingController();
  final estadoController = TextEditingController();

  Future<void> searchCep() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Questão 3')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: cepController,
                decoration: const InputDecoration(label: Text('CEP')),
              ),
              TextField(
                controller: logradouroController,
                decoration: const InputDecoration(label: Text('Logradouro')),
              ),
              TextField(
                controller: bairroController,
                decoration: const InputDecoration(label: Text('Bairro')),
              ),
              TextField(
                controller: cidadeController,
                decoration: const InputDecoration(label: Text('Cidade')),
              ),
              TextField(
                controller: estadoController,
                decoration: const InputDecoration(label: Text('Estado')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
