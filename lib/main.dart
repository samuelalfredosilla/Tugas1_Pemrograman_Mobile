import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Fungsi utama untuk menjalankan aplikasi Flutter
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug di pojok kanan atas
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Ingetin Dong!!!"), // Judul pada AppBar
          backgroundColor: Colors.blueAccent, // Warna latar belakang AppBar
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Menengahkan semua widget dalam Column
            children: [
              Image.asset('images/ingetin_dong.png', width: 150), // Menampilkan gambar dari assets
              const SizedBox(height: 20), // Memberikan jarak antar elemen
              ReminderBox(text: "📚 Mau diingetin Tugas?"), // Box pengingat tugas
              ReminderBox(text: "🍜 Mau diingetin Makan?"), // Box pengingat makan
              ReminderBox(text: "😴 Mau diingetin Tidur?"), // Box pengingat tidur
              ReminderBox(text: "💰 Mau diingetin Ambil Gaji?"), // Box pengingat ambil gaji
            ],
          ),
        ),
      ),
    );
  }
}

// Widget custom untuk membuat Reminder Box
class ReminderBox extends StatelessWidget {
  final String text; // Properti teks untuk ReminderBox

  const ReminderBox({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5), // Memberikan jarak vertikal antar box
      padding: const EdgeInsets.all(16), // Memberikan padding dalam box
      decoration: BoxDecoration(
        color: Colors.blue[100], // Warna latar belakang box
        borderRadius: BorderRadius.circular(10), // Membuat sudut box melengkung
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16), // Menentukan ukuran font teks dalam box
      ),
    );
  }
}