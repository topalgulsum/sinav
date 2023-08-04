import 'package:flutter/material.dart';
import 'sonucdgs.dart';

class DgsPage extends StatefulWidget {
  const DgsPage({Key? key}) : super(key: key);

  @override
  _DgsPageState createState() => _DgsPageState();
}

class _DgsPageState extends State<DgsPage> {
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
        title: Text('DGS PUAN HESAPLAMA'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'SAYISAL BÖLÜM',
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
              'SÖZEL BÖLÜM',
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
                final int dogrusayi =
                    int.tryParse(_textFieldController1.text) ?? 0;
                final int yanlissayi =
                    int.tryParse(_textFieldController2.text) ?? 0;
                final int bossayi =
                    int.tryParse(_textFieldController3.text) ?? 0;
                final int dogrusozi =
                    int.tryParse(_textFieldController4.text) ?? 0;
                final int yanlissozi =
                    int.tryParse(_textFieldController5.text) ?? 0;
                final int bossozi =
                    int.tryParse(_textFieldController6.text) ?? 0;

                // Hesaplama sonuçlarını hesaplayalım
                double dgsScore = calculateDgsScore(dogrusayi, yanlissayi,
                    bossayi, dogrusozi, yanlissozi, bossozi);

                // Sonuçları yeni sayfaya gönderelim
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SonucDgs(
                      dgsScore: dgsScore,
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

double calculateDgsScore(int dogrusayi, int yanlissayi, int bossayi,
    int dogrusozi, int yanlissozi, int bossozi) {
  // Hesaplanacak dgs puanı değişkeni
  double dgsPuan = 0.0; // Varsayılan olarak 0 değerini atayabiliriz.

  // Hesaplama işlemleri
  try {
    // Burada dgs puanını hesaplayacak mantığı uygulayabilirsiniz
    // Örnek olarak, doğru sayıların ağırlıklı ortalamasını alabiliriz
    double sayisalPuan = (dogrusayi - (yanlissayi / 4)).toDouble();
    double sozelPuan = (dogrusozi - (yanlissozi / 4)).toDouble();

    dgsPuan = (sayisalPuan * 0.6) + (sozelPuan * 0.4);
  } catch (e) {
    // Eğer hesaplama sırasında bir hata oluşursa, loglayabiliriz veya başka bir işlem yapabiliriz
    print('Hesaplama hatası: $e');
  }

  // Hesaplanan dgs puanını döndürelim
  return dgsPuan;
}
