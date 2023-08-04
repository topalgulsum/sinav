import 'package:flutter/material.dart';
import 'sonuckpss.dart';

class KpssPage extends StatefulWidget {
  const KpssPage({Key? key}) : super(key: key);

  @override
  _KpssPageState createState() => _KpssPageState();
}

class _KpssPageState extends State<KpssPage> {
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
        title: Text('KPSS PUAN HESAPLAMA'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Genel Yetenek',
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
              'Genel Kültür',
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
                final int dogruYetenek =
                    int.tryParse(_textFieldController1.text) ?? 0;
                final int yanlisYetenek =
                    int.tryParse(_textFieldController2.text) ?? 0;
                final int bosYetenek =
                    int.tryParse(_textFieldController3.text) ?? 0;
                final int dogruKultur =
                    int.tryParse(_textFieldController4.text) ?? 0;
                final int yanlisKultur =
                    int.tryParse(_textFieldController5.text) ?? 0;
                final int bosKultur =
                    int.tryParse(_textFieldController6.text) ?? 0;

                // Hesaplama sonuçlarını hesaplayalım
                double kpssScore = calculateKpssScore(
                    dogruYetenek,
                    yanlisYetenek,
                    bosYetenek,
                    dogruKultur,
                    yanlisKultur,
                    bosKultur);

                // Sonuçları yeni sayfaya gönderelim
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SonucKpss(
                      kpssScore: kpssScore,
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

double calculateKpssScore(int dogruYetenek, int yanlisYetenek, int bosYetenek,
    int dogruKultur, int yanlisKultur, int bosKultur) {
  // Hesaplanacak KPSS puanı değişkeni
  double kpssPuan = 0.0; // Varsayılan olarak 0 değerini atayabiliriz.

  // Hesaplama işlemleri
  try {
    // Burada KPSS puanını hesaplayacak mantığı uygulayabilirsiniz
    // Örnek olarak, doğru sayıların ağırlıklı ortalamasını alabiliriz
    double yetenekPuan = (dogruYetenek - (yanlisYetenek / 4)).toDouble();
    double kulturPuan = (dogruKultur - (yanlisKultur / 4)).toDouble();

    kpssPuan = (yetenekPuan * 0.6) + (kulturPuan * 0.4);
  } catch (e) {
    // Eğer hesaplama sırasında bir hata oluşursa, loglayabiliriz veya başka bir işlem yapabiliriz
    print('Hesaplama hatası: $e');
  }

  // Hesaplanan KPSS puanını döndürelim
  return kpssPuan;
}
