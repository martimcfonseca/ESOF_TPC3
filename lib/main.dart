import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "hello world",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _name = 'Martim';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hi! my name is $_name!',
              key: const Key('greeting_text'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              key: const Key('change_name_button'),
              onPressed: () => setState(() => _name = _name=='Martim'? 'Jorge' : 'Martim'),
              child: const Text('Change name'),
            ),
          ],
        ),
      ),
    );
  }
}
