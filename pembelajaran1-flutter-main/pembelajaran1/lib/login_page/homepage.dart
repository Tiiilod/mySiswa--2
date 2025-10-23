import 'package:flutter/material.dart';
import 'package:pembelajaran1/login_page/CalendarPage.dart';
import 'package:pembelajaran1/login_page/CatatanPage.dart';
import 'package:pembelajaran1/login_page/JadwalPelajaranPage.dart';
import 'package:pembelajaran1/login_page/SchoolPage.dart';
import 'package:pembelajaran1/login_page/TugasPage.dart';
import 'package:pembelajaran1/login_page/inbox.dart';
import 'package:pembelajaran1/login_page/ProfilePage.dart';
import 'package:pembelajaran1/komponen/colors.dart';

class Homepage extends StatefulWidget {
  final String username;
  const Homepage({super.key, required this.username});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("mySiswa"),
        backgroundColor: AppColors.style1,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Inbox()),
              );
            },
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Assalamualaikum, ${widget.username}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Semoga Harimu Menyenangkan",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 30),

                // 🔵 Container 1 : Catatan
                buildMenuCard(
                  context,
                  title: "3 Catatan Terakhir",
                  icon: Icons.note_alt,
                  colors: [Colors.blue, Colors.indigo],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CatatanPage()),
                    );
                  },
                ),
                const SizedBox(height: 20),

                // 🔵 Container 2 : Jadwal
                buildMenuCard(
                  context,
                  title: "Jadwal Pelajaran",
                  icon: Icons.calendar_month,
                  colors: [Colors.teal, Colors.green],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const JadwalPelajaranPage()),
                    );
                  },
                ),
                const SizedBox(height: 20),

                // 🔵 Container 3 : Tugas
                buildMenuCard(
                  context,
                  title: "Tugas Hari Ini",
                  icon: Icons.assignment_turned_in,
                  colors: [Colors.orange, Colors.redAccent],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Tugaspage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amberAccent,
        child: const Icon(Icons.camera_alt),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.pinkAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Schoolpage()),
                );
              },
              icon: const Icon(Icons.school),
            ),
            const SizedBox(width: 50),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CalendarPage()),
                );
              },
              icon: const Icon(Icons.calendar_month),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              icon: const Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }

  /// 🔹 Widget pembuat Card Menu
  Widget buildMenuCard(
    BuildContext context, {
    required String title,
    required IconData icon,
    required List<Color> colors,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: colors.last.withOpacity(0.4),
              blurRadius: 10,
              offset: const Offset(3, 6),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 40),
            const SizedBox(width: 15),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
