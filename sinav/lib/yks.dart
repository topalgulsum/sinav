import 'sonucyks.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  // Define controllers for the TextFields
  final TextEditingController _textFieldController1 = TextEditingController();
  final TextEditingController _textFieldController2 = TextEditingController();
  final TextEditingController _textFieldController3 = TextEditingController();
  final TextEditingController _textFieldController4 = TextEditingController();
  final TextEditingController _textFieldController5 = TextEditingController();
  final TextEditingController _textFieldController6 = TextEditingController();
  final TextEditingController _textFieldController7 = TextEditingController();
  final TextEditingController _textFieldController8 = TextEditingController();
  final TextEditingController _textFieldController9 = TextEditingController();
  final TextEditingController _textFieldController10 = TextEditingController();
  final TextEditingController _textFieldController11 = TextEditingController();
  final TextEditingController _textFieldController12 = TextEditingController();
  final TextEditingController _textFieldController13 = TextEditingController();
  final TextEditingController _textFieldController14 = TextEditingController();
  final TextEditingController _textFieldController15 = TextEditingController();
  final TextEditingController _textFieldController16 = TextEditingController();
  final TextEditingController _textFieldController17 = TextEditingController();
  final TextEditingController _textFieldController18 = TextEditingController();
  final TextEditingController _textFieldController19 = TextEditingController();
  final TextEditingController _textFieldController20 = TextEditingController();
  final TextEditingController _textFieldController21 = TextEditingController();
  final TextEditingController _textFieldController22 = TextEditingController();
  final TextEditingController _textFieldController23 = TextEditingController();
  final TextEditingController _textFieldController24 = TextEditingController();
  final TextEditingController _textFieldController25 = TextEditingController();

  @override
  void dispose() {
    // Dispose the controllers to release resources
    _textFieldController1.dispose();
    _textFieldController2.dispose();
    _textFieldController3.dispose();
    _textFieldController4.dispose();
    _textFieldController5.dispose();
    _textFieldController6.dispose();
    _textFieldController7.dispose();
    _textFieldController8.dispose();
    _textFieldController9.dispose();
    _textFieldController10.dispose();
    _textFieldController11.dispose();
    _textFieldController12.dispose();
    _textFieldController13.dispose();
    _textFieldController14.dispose();
    _textFieldController15.dispose();
    _textFieldController16.dispose();
    _textFieldController17.dispose();
    _textFieldController18.dispose();
    _textFieldController19.dispose();
    _textFieldController20.dispose();
    _textFieldController21.dispose();
    _textFieldController22.dispose();
    _textFieldController23.dispose();
    _textFieldController24.dispose();
    _textFieldController25.dispose();
    super.dispose();
  }

  double tytScore = 1;
  double aytScore = 1;
  void calculateScores() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('YKS PUAN HESAPLAMA'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Color.fromARGB(255, 237, 230, 230),
            onPressed: () {
              // Navigate back when the back button is pressed
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'TYT',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 2),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _textFieldController1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 12),
                          labelText: 'Türkçe Doğru Sayısı',
                          isDense: true),
                    ),
                  ),
                  SizedBox(width: 2),
                  Expanded(
                    child: TextField(
                      controller: _textFieldController2,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 12),
                          labelText: 'Türçe Yanlış Sayısı',
                          isDense: true),
                    ),
                  ),
                  SizedBox(width: 2),
                  Expanded(
                    child: TextField(
                      controller: _textFieldController3,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 12),
                          labelText: 'Türkçe Boş Sayısı',
                          isDense: true),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _textFieldController4,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 12),
                          labelText: 'Sosyal Doğru Sayısı',
                          isDense: true),
                    ),
                  ),
                  SizedBox(width: 2),
                  Expanded(
                    child: TextField(
                      controller: _textFieldController5,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 12),
                          labelText: 'Sosyal Yanlış Sayısı',
                          isDense: true),
                    ),
                  ),
                  SizedBox(width: 2),
                  Expanded(
                    child: TextField(
                      controller: _textFieldController6,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 12),
                          labelText: 'Sosyal Boş Sayısı',
                          isDense: true),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _textFieldController7,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 10),
                          labelText: 'Matematik Doğru Sayısı',
                          isDense: true),
                    ),
                  ),
                  SizedBox(width: 2),
                  Expanded(
                    child: TextField(
                      controller: _textFieldController8,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 10),
                          labelText: 'Matematik Yanlış Sayısı',
                          isDense: true),
                    ),
                  ),
                  SizedBox(width: 2),
                  Expanded(
                    child: TextField(
                      controller: _textFieldController9,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 12),
                          labelText: 'Matematik Boş Sayısı',
                          isDense: true),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _textFieldController10,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 12),
                          labelText: 'Fen Doğru Sayısı',
                          isDense: true),
                    ),
                  ),
                  SizedBox(width: 2),
                  Expanded(
                    child: TextField(
                      controller: _textFieldController11,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 12),
                          labelText: 'Fen Yanlış Sayısı',
                          isDense: true),
                    ),
                  ),
                  SizedBox(width: 2),
                  Expanded(
                    child: TextField(
                      controller: _textFieldController12,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 12),
                          labelText: 'Fen Boş Sayısı',
                          isDense: true),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              Text(
                'AYT',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _textFieldController13,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 10),
                          labelText: 'TDE/SB-1 Doğru Sayısı',
                          isDense: true),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: TextField(
                      controller: _textFieldController14,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 10),
                          labelText: 'TDE/SB-1 Yanlış Sayısı',
                          isDense: true),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: TextField(
                      controller: _textFieldController15,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 12),
                          labelText: 'TDE/SB-1 Boş Sayısı',
                          isDense: true),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _textFieldController16,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 12),
                          labelText: 'SB-2 Doğru Sayısı',
                          isDense: true),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: TextField(
                      controller: _textFieldController17,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 12),
                          labelText: 'SB-2 Yanlış Sayısı',
                          isDense: true),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: TextField(
                      controller: _textFieldController18,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 12),
                          labelText: 'SB-2 Boş Sayısı',
                          isDense: true),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _textFieldController19,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 10),
                          labelText: 'Matematik Doğru Sayısı',
                          isDense: true),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: TextField(
                      controller: _textFieldController20,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 10),
                          labelText: 'Matematik Yanlış Sayısı',
                          isDense: true),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: TextField(
                      controller: _textFieldController21,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 12),
                          labelText: 'Matematik Boş Sayısı',
                          isDense: true),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _textFieldController22,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 12),
                          labelText: 'Fen Doğru Sayısı',
                          isDense: true),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: TextField(
                      controller: _textFieldController23,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 12),
                          labelText: 'Fen Yanlış Sayısı',
                          isDense: true),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: TextField(
                      controller: _textFieldController24,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 12),
                          labelText: 'Fen Boş Sayısı',
                          isDense: true),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  // Do something with the entered values
                  final int number1 =
                      int.tryParse(_textFieldController1.text) ?? 0;
                  final int number2 =
                      int.tryParse(_textFieldController2.text) ?? 0;
                  final int number3 =
                      int.tryParse(_textFieldController3.text) ?? 0;
                  final int number4 =
                      int.tryParse(_textFieldController4.text) ?? 0;
                  final int number5 =
                      int.tryParse(_textFieldController5.text) ?? 0;
                  final int number6 =
                      int.tryParse(_textFieldController6.text) ?? 0;
                  final int number7 =
                      int.tryParse(_textFieldController7.text) ?? 0;
                  final int number8 =
                      int.tryParse(_textFieldController8.text) ?? 0;
                  final int number9 =
                      int.tryParse(_textFieldController9.text) ?? 0;
                  final int number10 =
                      int.tryParse(_textFieldController10.text) ?? 0;
                  final int number11 =
                      int.tryParse(_textFieldController11.text) ?? 0;
                  final int number12 =
                      int.tryParse(_textFieldController12.text) ?? 0;
                  final int number13 =
                      int.tryParse(_textFieldController13.text) ?? 0;
                  final int number14 =
                      int.tryParse(_textFieldController14.text) ?? 0;
                  final int number15 =
                      int.tryParse(_textFieldController15.text) ?? 0;
                  final int number16 =
                      int.tryParse(_textFieldController16.text) ?? 0;
                  final int number17 =
                      int.tryParse(_textFieldController17.text) ?? 0;
                  final int number18 =
                      int.tryParse(_textFieldController18.text) ?? 0;
                  final int number19 =
                      int.tryParse(_textFieldController19.text) ?? 0;
                  final int number20 =
                      int.tryParse(_textFieldController20.text) ?? 0;
                  final int number21 =
                      int.tryParse(_textFieldController21.text) ?? 0;
                  final int number22 =
                      int.tryParse(_textFieldController22.text) ?? 0;
                  final int number23 =
                      int.tryParse(_textFieldController23.text) ?? 0;
                  final int number24 =
                      int.tryParse(_textFieldController24.text) ?? 0;
                  final int number25 =
                      int.tryParse(_textFieldController25.text) ?? 0;

                  // You can use the numbers as needed (e.g., calculations, etc.)
                  print(
                      'TYT Numbers: $number1, $number2, $number3, $number4, $number5, $number6, $number7, $number8, $number9, $number10, $number11, $number12');
                  print(
                      'AYT Numbers: $number13, $number14, $number15, $number16, $number17, $number18, $number19, $number20, $number21, $number22, $number23, $number24, $number25');
                  final double turkishCoefficientTYT = 1.32;
                  final double mathCoefficientTYT = 1.32;
                  final double socialCoefficientTYT = 1.36;
                  final double scienceCoefficientTYT = 1.36;

                  final double turkishCoefficientAYT = 3.3;
                  final double mathCoefficientAYT = 3.3;
                  final double socialCoefficientAYT = 3.4;
                  final double scienceCoefficientAYT = 3.4;

                  final int turkishCorrectTYT =
                      int.tryParse(_textFieldController1.text) ?? 0;
                  final int turkishWrongTYT =
                      int.tryParse(_textFieldController2.text) ?? 0;
                  final int turkishEmptyTYT =
                      int.tryParse(_textFieldController3.text) ?? 0;

                  final int socialCorrectTYT =
                      int.tryParse(_textFieldController4.text) ?? 0;
                  final int socialWrongTYT =
                      int.tryParse(_textFieldController5.text) ?? 0;
                  final int socialEmptyTYT =
                      int.tryParse(_textFieldController6.text) ?? 0;

                  final int mathCorrectTYT =
                      int.tryParse(_textFieldController7.text) ?? 0;
                  final int mathWrongTYT =
                      int.tryParse(_textFieldController8.text) ?? 0;
                  final int mathEmptyTYT =
                      int.tryParse(_textFieldController9.text) ?? 0;

                  final int scienceCorrectTYT =
                      int.tryParse(_textFieldController10.text) ?? 0;
                  final int scienceWrongTYT =
                      int.tryParse(_textFieldController11.text) ?? 0;
                  final int scienceEmptyTYT =
                      int.tryParse(_textFieldController12.text) ?? 0;

                  final int turkishCorrectAYT =
                      int.tryParse(_textFieldController13.text) ?? 0;
                  final int turkishWrongAYT =
                      int.tryParse(_textFieldController14.text) ?? 0;
                  final int turkishEmptyAYT =
                      int.tryParse(_textFieldController15.text) ?? 0;

                  final int socialCorrectAYT =
                      int.tryParse(_textFieldController16.text) ?? 0;
                  final int socialWrongAYT =
                      int.tryParse(_textFieldController17.text) ?? 0;
                  final int socialEmptyAYT =
                      int.tryParse(_textFieldController18.text) ?? 0;

                  final int mathCorrectAYT =
                      int.tryParse(_textFieldController19.text) ?? 0;
                  final int mathWrongAYT =
                      int.tryParse(_textFieldController20.text) ?? 0;
                  final int mathEmptyAYT =
                      int.tryParse(_textFieldController21.text) ?? 0;

                  final int scienceCorrectAYT =
                      int.tryParse(_textFieldController22.text) ?? 0;
                  final int scienceWrongAYT =
                      int.tryParse(_textFieldController23.text) ?? 0;
                  final int scienceEmptyAYT =
                      int.tryParse(_textFieldController24.text) ?? 0;

                  // Calculate TYT and AYT scores
                  double tytScore = (turkishCorrectTYT * 1.32) -
                      (turkishWrongTYT * (1.32 / 4)) -
                      (turkishEmptyTYT * 0.25) +
                      (socialCorrectTYT * 1.36) -
                      (socialWrongTYT * (1.36 / 4)) -
                      (socialEmptyTYT * 0.25) +
                      (mathCorrectTYT * 1.32) -
                      (mathWrongTYT * (1.32 / 4)) -
                      (mathEmptyTYT * 0.25) +
                      (scienceCorrectTYT * 1.36) -
                      (scienceWrongTYT * (1.36 / 4)) -
                      (scienceEmptyTYT * 0.25);

                  double aytScore =
                      (turkishCorrectAYT * turkishCoefficientAYT) -
                          (turkishWrongAYT * (turkishCoefficientAYT / 4)) -
                          (turkishEmptyAYT * 0.25) +
                          (socialCorrectAYT * socialCoefficientAYT) -
                          (socialWrongAYT * (socialCoefficientAYT / 4)) -
                          (socialEmptyAYT * 0.25) +
                          (mathCorrectAYT * mathCoefficientAYT) -
                          (mathWrongAYT * (mathCoefficientAYT / 4)) -
                          (mathEmptyAYT * 0.25) +
                          (scienceCorrectAYT * scienceCoefficientAYT) -
                          (scienceWrongAYT * (scienceCoefficientAYT / 4)) -
                          (scienceEmptyAYT * 0.25);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => sonucyks(
                        tytScore: tytScore!,
                        aytScore: aytScore!,
                      ),
                    ),
                  );
                },
                child: Text('HESAPLA'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

SonucYKSPage() {}

void main() {
  runApp(MyWidget());
}
