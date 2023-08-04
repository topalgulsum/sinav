import 'package:flutter/material.dart';
import 'sonuctuskli.dart';

class TuskliPage extends StatefulWidget {
  const TuskliPage({Key? key}) : super(key: key);

  @override
  _TuskliPageState createState() => _TuskliPageState();
}

class _TuskliPageState extends State<TuskliPage> {
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
        title: Text('Klinik Tıp Bilimleri Testi Sonucu'),
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
              'KLİNİK TIP BİLİMLERİ',
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
                final int dogruktip =
                    int.tryParse(_textFieldController1.text) ?? 0;
                final int yanlisktip =
                    int.tryParse(_textFieldController2.text) ?? 0;
                final int bosktip =
                    int.tryParse(_textFieldController3.text) ?? 0;

                // Hesaplama sonuçlarını hesaplayalım
                double tuskliScore =
                    calculateTuskliScore(dogruktip, yanlisktip, bosktip);

                // Sonuçları yeni sayfaya gönderelim
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SonucTuskli(
                      tuskliScore: tuskliScore,
                    ),
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

double calculateTuskliScore(int dogruktip, int yanlisktip, int bosktip) {
  double tuskliPuan = 0.0; // Varsayılan olarak 0 değerini atayabiliriz.

  // Hesaplama işlemleri
  try {
    // Burada puan hesaplayacak mantığı uygulayabilirsiniz
    // Örnek olarak, doğru sayıların ağırlıklı ortalamasını alabiliriz
    double ktipPuan = (dogruktip - (yanlisktip / 4)).toDouble();

    tuskliPuan = (ktipPuan * 0.6);
  } catch (e) {
    // Eğer hesaplama sırasında bir hata oluşursa, loglayabiliriz veya başka bir işlem yapabiliriz
    print('Hesaplama hatası: $e');
  }

  // Hesaplanan  puanı döndürelim
  return tuskliPuan;
}
