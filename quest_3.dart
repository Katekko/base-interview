// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatefulWidget {
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final cepController = TextEditingController();
//   final logradouroController = TextEditingController();
//   final bairroController = TextEditingController();
//   final cidadeController = TextEditingController();
//   final estadoController = TextEditingController();

//   final cepFocus = FocusNode();

//   @override
//   void initState() {
//     super.initState();
//     cepFocus.addListener(() {
//       if (!cepFocus.hasFocus) searchCep();
//     });
//   }

//   Future<void> searchCep() async {
//     if (cepController.text.isNotEmpty) {
//       var url = Uri.parse(
//         'https://viacep.com.br/ws/${cepController.text}/json/',
//       );
//       final response = await http.get(url);
//       if (response.statusCode >= 200 && response.statusCode <= 300) {
//         final parsedBody = jsonDecode(response.body);
//         logradouroController.text = parsedBody['logradouro'] ?? '';
//         bairroController.text = parsedBody['bairro'] ?? '';
//         cidadeController.text = parsedBody['localidade'] ?? '';
//         estadoController.text = parsedBody['uf'] ?? '';
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Questão 3')),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               TextField(
//                 controller: cepController,
//                 focusNode: cepFocus,
//                 decoration: const InputDecoration(label: Text('CEP')),
//               ),
//               TextField(
//                 controller: logradouroController,
//                 decoration: const InputDecoration(label: Text('Logradouro')),
//               ),
//               TextField(
//                 controller: bairroController,
//                 decoration: const InputDecoration(label: Text('Bairro')),
//               ),
//               TextField(
//                 controller: cidadeController,
//                 decoration: const InputDecoration(label: Text('Cidade')),
//               ),
//               TextField(
//                 controller: estadoController,
//                 decoration: const InputDecoration(label: Text('Estado')),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
