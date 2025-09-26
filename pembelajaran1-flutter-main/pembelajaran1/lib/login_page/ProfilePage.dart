import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class Profile extends StatelessWidget {
//   const Profile({super.key});

//   @override
//   Widget build(BuildContext context) {
//   return Scaffold(
      
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//                Row(
//               mainAxisAlignment: MainAxisAlignment.center, 
//               children: [
//                 Icon(Icons.person, size: 40),
//                 SizedBox(width: 10),
//                 Text(
//                   'Fulan Bin Fulan',
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Tanggal Lahir: 19/09/2002',
//               style: TextStyle(fontSize: 18),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Alamat: RT/RW: 02/08, Desa Rumpang',
//               style: TextStyle(fontSize: 18),
//               textAlign: TextAlign.center, 
//                    ),
//             ],
//           ),
//         ),
//       ),
//       appBar: AppBar(automaticallyImplyLeading: false,
//       title: Center(child: Text("Profile")),
//     backgroundColor: Colors.lightBlueAccent,),
//     );
    
//   }
// }






class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Profil Pengguna'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Avatar dan Nama
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
                child: Column(
                  children: [
                    CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/mySiswa.png'),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Fulan Bin Fulan',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'ID: 1234567890',
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Informasi Lain
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 3,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    _buildInfoRow('Tanggal Lahir', '19/09/2002'),
                    Divider(),
                    _buildInfoRow('Alamat', 'RT/RW: 02/08, Desa Rumpang'),
                    Divider(),
                    _buildInfoRow('Email', 'fulan@example.com'),
                    Divider(),
                    _buildInfoRow('Telepon', '+62 812 3456 7890'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget bantu untuk baris info
  Widget _buildInfoRow(String title, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.info_outline, color: Colors.blueAccent),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(value),
              ],
            ),
          ),
        ],
      ),
    );
  }
}