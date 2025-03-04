import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Ingetin Dong!!!"),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/ingetin_dong.png', width: 150),
              const SizedBox(height: 20),
              ReminderBox(text: "📚 Mau diingetin Tugas?"),
              ReminderBox(text: "🍜 Mau diingetin Makan?"),
              ReminderBox(text: "😴 Mau diingetin Tidur?"),
              ReminderBox(text: "💰 Mau diingetin Ambil Gaji?"),
            ],
          ),
        ),
      ),
    );
  }
}

class ReminderBox extends StatelessWidget {
  final String text;
  const ReminderBox({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}