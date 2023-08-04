import 'package:flutter/material.dart';

class SonucYds extends StatelessWidget {
  final double ydsScore;

  const SonucYds({required this.ydsScore});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sonuç'),
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
              'YDS Sonucunuz:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Puan: ${ydsScore.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
