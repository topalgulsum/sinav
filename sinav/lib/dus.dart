import 'package:flutter/material.dart';
import 'sonucdus.dart';

class DusPage extends StatefulWidget {
  const DusPage({Key? key}) : super(key: key);

  @override
  _DusPageState createState() => _DusPageState();
}

class _DusPageState extends State<DusPage> {
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
        title: Text('DUS PUAN HESAPLAMA'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'TEMEL BİLİMLER',
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
              'KLİNİK BİLİMLER',
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
                final int dogrutem =
                    int.tryParse(_textFieldController1.text) ?? 0;
                final int yanlistem =
                    int.tryParse(_textFieldController2.text) ?? 0;
                final int bostem =
                    int.tryParse(_textFieldController3.text) ?? 0;
                final int dogrukli =
                    int.tryParse(_textFieldController4.text) ?? 0;
                final int yanliskli =
                    int.tryParse(_textFieldController5.text) ?? 0;
                final int boskli =
                    int.tryParse(_textFieldController6.text) ?? 0;

                // Hesaplama sonuçlarını hesaplayalım
                double dusScore = calculateDusScore(
                    dogrutem, yanlistem, bostem, dogrukli, yanliskli, boskli);

                // Sonuçları yeni sayfaya gönderelim
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SonucDus(
                      dusScore: dusScore,
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

double calculateDusScore(int dogrutem, int yanlistem, int bostem, int dogrukli,
    int yanliskli, int boskli) {
  // Hesaplanacak dus puanı değişkeni
  double dusPuan = 0.0; // Varsayılan olarak 0 değerini atayabiliriz.

  // Hesaplama işlemleri
  try {
    // Burada dus puanını hesaplayacak mantığı uygulayabilirsiniz
    // Örnek olarak, doğru sayıların ağırlıklı ortalamasını alabiliriz
    double temelPuan = (dogrutem - (yanlistem / 4)).toDouble();
    double klinikPuan = (dogrukli - (yanliskli / 4)).toDouble();

    dusPuan = (temelPuan * 0.6) + (klinikPuan * 0.4);
  } catch (e) {
    // Eğer hesaplama sırasında bir hata oluşursa, loglayabiliriz veya başka bir işlem yapabiliriz
    print('Hesaplama hatası: $e');
  }

  // Hesaplanan Dus puanını döndürelim
  return dusPuan;
}
