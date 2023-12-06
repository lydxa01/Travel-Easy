import 'package:flutter/material.dart';
import 'package:final_uts_v3422026/page/regis.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isHidden = true;

  void navigateToRegistration() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Regis(), 
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(16, 179, 255, 1),
        title: Text("Login"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(labelText: "Email", prefixIcon: Icon(Icons.email)),
          ),
          TextField(
            autocorrect: false,
            obscureText: true,
            decoration: InputDecoration(labelText: "Password", prefixIcon: Icon(Icons.vpn_key)),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {},
            child: Text("LOGIN"),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.lightGreenAccent),
          ),
          SizedBox(height: 10), 
          TextButton(
            onPressed: navigateToRegistration,
            child: Text("Tidak punya akun? Daftar di sini"),
          ),
        ],
      ),
    );
  }
}
