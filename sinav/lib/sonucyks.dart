import 'package:flutter/material.dart';
import 'main.dart';
import 'yks.dart';

class sonucyks extends StatelessWidget {
  final double tytScore;
  final double aytScore;

  sonucyks({required this.tytScore, required this.aytScore});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sonuçlar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'TYT Puanınız: $tytScore',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'AYT Puanınız: $aytScore',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
