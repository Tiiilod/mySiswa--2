import 'package:flutter/material.dart';
import 'package:pembelajaran1/login_page/DetailPage.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kalender"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailPage(title: "Kaldik Semester Ganjil 2025"),
                    ),
                  );
                },
                
                child: Container(
                  height: 300,
                  width: 450,
                  color: Colors.lightGreen,
                  child: const Center(
                    child: Text(
                      "Kaldik Semester Ganjil 2025",
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

              
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailPage(title: "Kaldik Semester Genap 2026"),
                    ),
                  );
                },
                child: Container(
                  height: 300,
                  width: 450,
                  color: Colors.lightGreen,
                  child: const Center(
                    child: Text(
                      "Kaldik Semester Genap 2026",
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

              
            ],
          ),
        ),
      ),
    );
  }
}
