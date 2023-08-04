import 'package:flutter/material.dart';

class SonucDgs extends StatelessWidget {
  final double dgsScore;

  const SonucDgs({required this.dgsScore});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DGS SONUCUNUZ'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Geri tuşuna basıldığında önceki sayfaya dönelim
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'DGS Sonucunuz:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Puan: ${dgsScore.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 24),
            Text(
              'Sayısal Test Sonucunuz:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 24),
            Text(
              'Sözel Test Sonucunuz:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
