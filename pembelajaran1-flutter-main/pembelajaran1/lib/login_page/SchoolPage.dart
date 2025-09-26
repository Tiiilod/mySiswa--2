import 'package:flutter/material.dart';
import 'package:pembelajaran1/login_page/DetailPage.dart';

class Schoolpage extends StatelessWidget {
  const Schoolpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sekolah"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container Jadwal Pelajaran
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailPage(title: "3 Catatan Terakhir"),
                    ),
                  );
                },
                
                child: Container(
                  height: 200,
                  width: 450,
                  color: Colors.pink,
                  child: const Center(
                    child: Text(
                      "3 Catatan Terakhir",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Container Hmm
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailPage(title: "Jadwal Pelajaran"),
                    ),
                  );
                },
                child: Container(
                  height: 200,
                  width: 450,
                  color: Colors.pink,
                  child: const Center(
                    child: Text(
                      "Jadwal Pelajaran",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Container Roar
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailPage(title: "Tugas"),
                    ),
                  );
                },
                child: Container(
                  height: 200,
                  width: 450,
                  color: Colors.pink,
                  child: const Center(
                    child: Text(
                      "Tugas",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
