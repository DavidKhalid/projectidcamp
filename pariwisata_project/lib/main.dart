import 'package:flutter/material.dart';
import 'package:pariwisata_project/views/splashscreen.dart';

void main() {
  runApp(ExploraTrip());
}

class ExploraTrip extends StatelessWidget {
  const ExploraTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: splashScreen(),
    );
  }
}
