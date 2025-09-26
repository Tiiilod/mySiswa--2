import 'package:flutter/material.dart';

class JadwalPelajaranPage extends StatefulWidget {
  const JadwalPelajaranPage({super.key});

  @override
  State<JadwalPelajaranPage> createState() => _JadwalPelajaranPageState();
}

class _JadwalPelajaranPageState extends State<JadwalPelajaranPage> {
  // List awal container
  final List<String> _hari = ["Senin", "Selasa", "Rabu", "Kamis", "Jumat"];

  // Fungsi menampilkan dialog input
  void _tambahHari() {
    final TextEditingController _controller = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Tambah Hari"),
          content: TextField(
            controller: _controller,
            decoration: const InputDecoration(
              hintText: "Masukkan Nama Hari",
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
                    _hari.add(_controller.text.trim());
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
        title: const Text("Jadwal Pelajaran"),
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: List.generate(_hari.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    _hari[index],
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
        onPressed: _tambahHari,
        backgroundColor: Colors.amber,
        child: const Icon(Icons.add),
      ),
    );
  }
}
