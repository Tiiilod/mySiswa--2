import 'package:flutter/material.dart';

class Tugaspage extends StatefulWidget {
  const Tugaspage({super.key});

  @override
  State<Tugaspage> createState() => _TugaspageState();
}

class _TugaspageState extends State<Tugaspage> {
  // List awal container
  final List<String> _tugas = ["Tugas Sekolah 1", "Tugas Sekolah 2"];

  // Fungsi menampilkan dialog input
  void _tambahTugas() {
    final TextEditingController _controller = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Tambah Tugas"),
          content: TextField(
            controller: _controller,
            decoration: const InputDecoration(
              hintText: "Masukkan Nama Tugas",
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // tutup dialog tanpa menambah
              },
              child: const Text("Batal"),
            ),
            ElevatedButton(
              onPressed: () {
                if (_controller.text.trim().isNotEmpty) {
                  setState(() {
                    _tugas.add(_controller.text.trim());
                  });
                }
                Navigator.pop(context); // tutup dialog
              },
              child: const Text("Tambah"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tugas Hari Ini"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: List.generate(_tugas.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    _tugas[index],
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _tambahTugas,
        backgroundColor: Colors.amber,
        child: const Icon(Icons.add),
      ),
    );
  }
}
