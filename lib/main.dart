import 'package:flutter/cupertino.dart';
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
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final list = ['teste1', 'teste2', 'teste3'];
  final scroll = ScrollController();
  final list2 = List.generate(20, (index) => 'batatinha${index + 1}');
  final scroll2 = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text(
              'Testes',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView(
                controller: scroll,
                shrinkWrap: true,
                children: list
                    .map((e) => Text(e, textAlign: TextAlign.center))
                    .toList(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  list.add('teste${list.length + 1}');
                  scroll.animateTo(
                    scroll.position.maxScrollExtent,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.bounceIn,
                  );
                });
              },
              child: const Text('ADD teste'),
            ),
            const Text(
              'Batatinhas',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView(
                controller: scroll2,
                shrinkWrap: true,
                children: list2
                    .map((e) => Text(e, textAlign: TextAlign.center))
                    .toList(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  list2.add('batatinha${list2.length + 1}');
                  scroll2.animateTo(
                    scroll2.position.maxScrollExtent,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.bounceIn,
                  );
                });
              },
              child: const Text('ADD batatinha'),
            ),
          ],
        ),
      ),
    );
  }
}
