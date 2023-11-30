import 'package:flutter/material.dart';
import 'package:pariwisata_project/views/homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Align(
            alignment: Alignment(0, -0.3),
            child: Image.asset(
              "assets/images/logopariwisata.png",
            )),
        Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                child: Text("Login")))
      ]),
    );
  }
}
