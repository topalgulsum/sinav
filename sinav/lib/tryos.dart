import 'package:flutter/material.dart';
import 'sonuctryos.dart';

class TryosPage extends StatefulWidget {
  const TryosPage({Key? key}) : super(key: key);

  @override
  _TryosPageState createState() => _TryosPageState();
}

class _TryosPageState extends State<TryosPage> {
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
        title: Text('TR-YÖS PUAN HESAPLAMA'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'MATEMATİK',
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
              'TEMEL ÖĞRENME BECERİLERİ',
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
                final int dogrumat =
                    int.tryParse(_textFieldController1.text) ?? 0;
                final int yanlismat =
                    int.tryParse(_textFieldController2.text) ?? 0;
                final int bosmat =
                    int.tryParse(_textFieldController3.text) ?? 0;
                final int dogruteme =
                    int.tryParse(_textFieldController4.text) ?? 0;
                final int yanlisteme =
                    int.tryParse(_textFieldController5.text) ?? 0;
                final int bosteme =
                    int.tryParse(_textFieldController6.text) ?? 0;

                // Hesaplama sonuçlarını hesaplayalım
                double tryosScore = calculateTryosScore(dogrumat, yanlismat,
                    bosmat, dogruteme, yanlisteme, bosteme);

                // Sonuçları yeni sayfaya gönderelim
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SonucTryos(
                      tryosScore: tryosScore,
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

double calculateTryosScore(int dogrumat, int yanlismat, int bosmat,
    int dogruteme, int yanlisteme, int bosteme) {
  // Hesaplanacak tryos puanı değişkeni
  double tryosPuan = 0.0; // Varsayılan olarak 0 değerini atayabiliriz.

  // Hesaplama işlemleri
  try {
    // Burada puanını hesaplayacak mantığı uygulayabilirsiniz
    // Örnek olarak, doğru sayıların ağırlıklı ortalamasını alabiliriz
    double matPuan = (dogrumat - (yanlismat / 4)).toDouble();
    double beceriPuan = (dogruteme - (yanlisteme / 4)).toDouble();

    tryosPuan = (matPuan * 0.6) + (beceriPuan * 0.4);
  } catch (e) {
    // Eğer hesaplama sırasında bir hata oluşursa, loglayabiliriz veya başka bir işlem yapabiliriz
    print('Hesaplama hatası: $e');
  }

  // Hesaplanan  puanını döndürelim
  return tryosPuan;
}
