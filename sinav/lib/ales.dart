import 'package:flutter/material.dart';
import 'sonucales.dart';

class AlesPage extends StatefulWidget {
  const AlesPage({Key? key}) : super(key: key);

  @override
  _AlesPageState createState() => _AlesPageState();
}

class _AlesPageState extends State<AlesPage> {
  final TextEditingController _textFieldController1 = TextEditingController();
  final TextEditingController _textFieldController2 = TextEditingController();
  final TextEditingController _textFieldController3 = TextEditingController();
  final TextEditingController _textFieldController4 = TextEditingController();
  final TextEditingController _textFieldController5 = TextEditingController();
  final TextEditingController _textFieldController6 = TextEditingController();

  @override
  void dispose() {
    _textFieldController1.dispose();
    _textFieldController2.dispose();
    _textFieldController3.dispose();
    _textFieldController4.dispose();
    _textFieldController5.dispose();
    _textFieldController6.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ALES PUAN HESAPLAMA'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'SAYISAL TESTİ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextField(
              controller: _textFieldController1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'DOĞRU SAYISI',
              ),
            ),
            SizedBox(height: 8),
            TextField(
              controller: _textFieldController2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'YANLIŞ SAYISI',
              ),
            ),
            SizedBox(height: 8),
            TextField(
              controller: _textFieldController3,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'BOŞ SAYISI',
              ),
            ),
            SizedBox(height: 16),
            Text(
              'SÖZEL TESTİ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextField(
              controller: _textFieldController4,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'DOĞRU SAYISI',
              ),
            ),
            SizedBox(height: 8),
            TextField(
              controller: _textFieldController5,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'YANLIŞ SAYISI',
              ),
            ),
            SizedBox(height: 8),
            TextField(
              controller: _textFieldController6,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'BOŞ SAYISI',
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Hesapla butonuna basıldığında yapılacak işlemler burada
                final int dogruSay =
                    int.tryParse(_textFieldController1.text) ?? 0;
                final int yanlisSay =
                    int.tryParse(_textFieldController2.text) ?? 0;
                final int bosSay =
                    int.tryParse(_textFieldController3.text) ?? 0;
                final int dogruSoz =
                    int.tryParse(_textFieldController4.text) ?? 0;
                final int yanlisSoz =
                    int.tryParse(_textFieldController5.text) ?? 0;
                final int bosSoz =
                    int.tryParse(_textFieldController6.text) ?? 0;

                // Hesaplama sonuçlarını hesaplayalım
                double alesScore = calculatealesScore(
                    dogruSay, yanlisSay, bosSay, dogruSoz, yanlisSoz, bosSoz);

                // Sonuçları yeni sayfaya gönderelim
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SonucAles(
                      alesScore: alesScore,
                    ),
                  ),
                );
                // Hesaplama butonuna basıldığında yapılacak işlemler burada
                // Örnek olarak değerleri alıp işlem yapabilir veya yeni bir sayfaya geçebilirsiniz.
              },
              child: Text('HESAPLA'),
            ),
          ],
        ),
      ),
    );
  }
}

double calculatealesScore(int dogruSay, int yanlisSay, int bosSay, int dogruSoz,
    int yanlisSoz, int bosSoz) {
  // Hesaplanacak ales puanı değişkeni
  double alesPuan = 0.0; // Varsayılan olarak 0 değerini atayabiliriz.

  // Hesaplama işlemleri
  try {
    // Burada ales puanını hesaplayacak mantığı uygulayabilirsiniz
    // Örnek olarak, doğru sayıların ağırlıklı ortalamasını alabiliriz
    double yetenekPuan = (dogruSay - (yanlisSay / 4)).toDouble();
    double kulturPuan = (dogruSoz - (yanlisSoz / 4)).toDouble();

    alesPuan = (yetenekPuan * 0.6) + (kulturPuan * 0.4);
  } catch (e) {
    // Eğer hesaplama sırasında bir hata oluşursa, loglayabiliriz veya başka bir işlem yapabiliriz
    print('Hesaplama hatası: $e');
  }

  // Hesaplanan ales puanını döndürelim
  return alesPuan;
}
