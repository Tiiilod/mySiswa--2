import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pembelajaran1/login_page/login.dart';

class Register extends StatefulWidget {
  final String username;
  final String password;
  const Register({super.key, required this.username, required this.password});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
    final TextEditingController passwordController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  bool _obsecured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register", style: TextStyle()),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Buat Akun"),
              SizedBox(height: 25),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 25),
              TextField(
                controller: passwordController,
                obscureText: _obsecured,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obsecured = !_obsecured;
                      });
                    },
                    icon: Icon(
                      _obsecured ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 25),
              TextField(
                controller: passwordController,
                obscureText: _obsecured,
                decoration: InputDecoration(
                  labelText: "Konfirmasi Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obsecured = !_obsecured;
                      });
                    },
                    icon: Icon(
                      _obsecured ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                    context, 
                    MaterialPageRoute(builder: (context) => Login(username: widget.username, password: widget.password,))
                    );
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                    padding: EdgeInsets.all(17),
                  ),
                ),
              ),
                 SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.center, 
              children: [
                Text("Sudah punya akun?"),
                TextButton(onPressed: () {
                  Navigator.pushReplacement(
                    context, 
                    MaterialPageRoute(builder: (context) => Login(username: "admin", password: "12345",))
                    );
                }, 
                child: Text("Sign In"))
              ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
