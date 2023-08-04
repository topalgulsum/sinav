import 'package:flutter/material.dart';
import 'sonuceus.dart';

class EusPage extends StatefulWidget {
  const EusPage({Key? key}) : super(key: key);

  @override
  _EusPageState createState() => _EusPageState();
}

class _EusPageState extends State<EusPage> {
  final TextEditingController _textFieldController1 = TextEditingController();
  final TextEditingController _textFieldController2 = TextEditingController();
  final TextEditingController _textFieldController3 = TextEditingController();

  @override
  void dispose() {
    _textFieldController1.dispose();
    _textFieldController2.dispose();
    _textFieldController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EUS PUAN HESAPLAMA'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'ECZACILIKTA UZMANLIK EĞİTİMİ GİRİŞ',
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
            ElevatedButton(
              onPressed: () {
                // Hesapla butonuna basıldığında yapılacak işlemler burada
                final int dogruecz =
                    int.tryParse(_textFieldController1.text) ?? 0;
                final int yanlisecz =
                    int.tryParse(_textFieldController2.text) ?? 0;
                final int bosecz =
                    int.tryParse(_textFieldController3.text) ?? 0;

                // Hesaplama sonuçlarını hesaplayalım
                double eusScore =
                    calculateEusScore(dogruecz, yanlisecz, bosecz);

                // Sonuçları yeni sayfaya gönderelim
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SonucEus(
                      eusScore: eusScore,
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

double calculateEusScore(int dogruecz, int yanlisecz, int bosecz) {
  // Hesaplanacak eus puanı değişkeni
  double eusPuan = 0.0; // Varsayılan olarak 0 değerini atayabiliriz.

  // Hesaplama işlemleri
  try {
    // Burada puan hesaplayacak mantığı uygulayabilirsiniz
    // Örnek olarak, doğru sayıların ağırlıklı ortalamasını alabiliriz
    double eczPuan = (dogruecz - (yanlisecz / 4)).toDouble();

    eusPuan = (eczPuan * 0.6);
  } catch (e) {
    // Eğer hesaplama sırasında bir hata oluşursa, loglayabiliriz veya başka bir işlem yapabiliriz
    print('Hesaplama hatası: $e');
  }

  // Hesaplanan  puanı döndürelim
  return eusPuan;
}
