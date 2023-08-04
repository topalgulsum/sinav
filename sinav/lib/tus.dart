import 'package:flutter/material.dart';
import 'tustem.dart';
import 'tuskli.dart';

class TusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TUS Sonucu'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Geri tuşuna basıldığında önceki sayfaya dönelim
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Temel Tıp Bilimleri Testi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // Hesapla butonuna basıldığında Temel Tıp Bilimleri Testi hesapla sayfasına yönlendirelim
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TustemPage(),
                  ),
                );
              },
              child: Text('HESAPLA'),
            ),
            SizedBox(height: 32),
            Text(
              'Klinik Tıp Bilimleri Testi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // Hesapla butonuna basıldığında Klinik Tıp Bilimleri Testi hesapla sayfasına yönlendirelim
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TuskliPage(),
                  ),
                );
              },
              child: Text('HESAPLA'),
            ),
          ],
        ),
      ),
    );
  }
}
