// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       appBar: AppBar(
//         title: Text('Profil Pengguna'),
//         centerTitle: true,
//         backgroundColor: Colors.lightBlueAccent,
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             // Avatar dan Nama
//             Card(
//               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//               elevation: 4,
//               child: Padding(
//                 padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
//                 child: Column(
//                   children: [
//                     CircleAvatar(
//                     radius: 50,
//                     backgroundImage: AssetImage('images/mySiswa.png'),
//                     ),
//                     SizedBox(height: 16),
//                     Text(
//                       'Fulan Bin Fulan',
//                       style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(height: 4),
//                     Text(
//                       'ID: 1234567890',
//                       style: TextStyle(fontSize: 14, color: Colors.grey[600]),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),

//             // Informasi Lain
//             Card(
//               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//               elevation: 3,
//               child: Padding(
//                 padding: EdgeInsets.all(16.0),
//                 child: Column(
//                   children: [
//                     _buildInfoRow('Tanggal Lahir', '19/09/2002'),
//                     Divider(),
//                     _buildInfoRow('Alamat', 'RT/RW: 02/08, Desa Rumpang'),
//                     Divider(),
//                     _buildInfoRow('Email', 'fulan@example.com'),
//                     Divider(),
//                     _buildInfoRow('Telepon', '+62 812 3456 7890'),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Widget bantu untuk baris info
//   Widget _buildInfoRow(String title, String value) {
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: 8.0),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Icon(Icons.info_outline, color: Colors.blueAccent),
//           SizedBox(width: 10),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 4),
//                 Text(value),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:pembelajaran1/login_page/logout.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Profil Pengguna'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // 🧱 BAGIAN 1: Kartu Profil
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/mySiswa.png'),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Fulan Bin Fulan',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'ID: 1234567890',
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // 🧾 BAGIAN 2: Informasi Lain
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    _buildInfoRow('Tanggal Lahir', '19/09/2002'),
                    const Divider(),
                    _buildInfoRow('Alamat', 'RT/RW: 02/08, Desa Rumpang'),
                    const Divider(),
                    _buildInfoRow('Email', 'fulan@example.com'),
                    const Divider(),
                    _buildInfoRow('Telepon', '+62 812 3456 7890'),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            // 🚪 BAGIAN 3: Tombol Logout
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const LogoutPage()),
                  (route) => false, // menghapus semua halaman sebelumnya
                );
              },
              icon: const Icon(Icons.logout),
              label: const Text("Logout"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 🔹 Fungsi bantu untuk menampilkan baris info
  Widget _buildInfoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.info_outline, color: Colors.blueAccent),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(value),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
