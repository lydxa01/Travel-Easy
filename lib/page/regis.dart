import 'package:flutter/material.dart';
import 'package:final_uts_v3422026/page/login.dart';

class Regis extends StatefulWidget {
  const Regis({Key? key}) : super(key: key);

  @override
  State<Regis> createState() => _RegisState();
}

class _RegisState extends State<Regis> {
  bool isHidden = true;

  void navigateToLogin() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => Login(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(16, 179, 255, 1),
        title: Text("Registrasi"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            autocorrect: false,
            decoration: InputDecoration(
                labelText: "Nama", prefixIcon: Icon(Icons.person)),
          ),
          TextField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                labelText: "Email", prefixIcon: Icon(Icons.email)),
          ),
          TextField(
            autocorrect: false,
            obscureText: true,
            decoration: InputDecoration(
                labelText: "Password", prefixIcon: Icon(Icons.vpn_key)),
          ),
          TextField(
            autocorrect: false,
            obscureText: true,
            decoration: InputDecoration(
                labelText: "Konfirmasi Password",
                prefixIcon: Icon(Icons.vpn_key)),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {},
            child: Text("DAFTAR"),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreenAccent),
          ),
          SizedBox(height: 10),
          TextButton(
            onPressed: navigateToLogin,
            child: Text("Sudah Punya Akun? Login"),
          ),
        ],
      ),
    );
  }
}
