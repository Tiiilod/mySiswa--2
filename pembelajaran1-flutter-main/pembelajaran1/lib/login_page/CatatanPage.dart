import 'package:flutter/material.dart';
import 'package:pembelajaran1/komponen/colors.dart';
import 'DetailPage.dart'; // pastikan import file DetailPage

class CatatanPage extends StatefulWidget {
  const CatatanPage({super.key});

  @override
  State<CatatanPage> createState() => _CatatanPageState();
}

class _CatatanPageState extends State<CatatanPage> {
  // List awal catatan
  final List<String> _catatan = ["Catatan 1", "Catatan 2", "Catatan 3"];

  // Fungsi menampilkan dialog untuk menambah catatan
  void _tambahCatatan() {
    final TextEditingController _controller = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Tambah Catatan"),
          content: TextField(
            controller: _controller,
            decoration: const InputDecoration(
              hintText: "Masukkan nama catatan",
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Batal"),
            ),
            ElevatedButton(
              onPressed: () {
                if (_controller.text.trim().isNotEmpty) {
                  setState(() {
                    _catatan.add(_controller.text.trim());
                  });
                }
                Navigator.pop(context);
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
        title: const Text("Catatan Terakhir"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: List.generate(_catatan.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: GestureDetector( // ✅ Container dibungkus GestureDetector
                onTap: () {
                  // Ketika diklik, pindah ke DetailPage dengan judul sesuai catatan
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailPage(title: _catatan[index]),
                    ),
                  );
                },
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.style2,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      _catatan[index],
                      style: const TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _tambahCatatan,
        backgroundColor: AppColors.style4,
        child: const Icon(Icons.add),
      ),
    );
  }
}
