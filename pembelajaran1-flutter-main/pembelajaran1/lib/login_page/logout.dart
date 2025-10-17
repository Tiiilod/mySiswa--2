// import 'package:flutter/material.dart';
// import 'package:pembelajaran1/login_page/login.dart';

// class LogoutPage extends StatelessWidget {
//   const LogoutPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Icon(Icons.exit_to_app, color: Colors.red, size: 80),
//             const SizedBox(height: 20),
//             const Text(
//               "Anda telah logout",
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Misalnya kembali ke halaman login
//                 Navigator.pushAndRemoveUntil(
//                   context,
//                   MaterialPageRoute(builder: (context) => const Login()),
//                   (route) => false,
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.lightBlueAccent,
//                 padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//               child: const Text("Kembali ke Login", style: TextStyle(fontSize: 16)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:pembelajaran1/login_page/login.dart';

class LogoutPage extends StatelessWidget {
  const LogoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.logout,
              color: Colors.redAccent,
              size: 80,
            ),
            const SizedBox(height: 20),
            const Text(
              "Anda telah logout",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text("Silakan login kembali untuk melanjutkan"),
            const SizedBox(height: 30),

            // 🔙 Tombol Kembali ke Login
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const Login(username: "", password: "",)),
                  (route) => false,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text("Kembali ke Login"),
            ),
          ],
        ),
      ),
    );
  }
}

// 👉 Contoh halaman login sederhana (kamu bisa ubah sesuai punyamu)
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Halaman Login")),
      body: const Center(child: Text("Form Login di sini")),
    );
  }
}
