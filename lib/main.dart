import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  // double _celciusToKelvin = 273;
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //variabel untuk konverter
  double _inputUser = 0;
  double _celciusToKelvin = 0;
  double _celciusToReamur = 0;
  TextEditingController konversiController;

  void _konversiSuhu(){
    setState(() {
      _inputUser = double.parse(konversiController.text);
      _celciusToKelvin = _inputUser + 273.15;
      _celciusToReamur = _inputUser * (4/5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Konverter Suhu'),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextFormField(
                controller: konversiController,
                decoration: InputDecoration(
                  hintText: 'Masukkan Suhu Dalam Celcius',
                ),
                keyboardType: TextInputType.number,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: <Widget>[
                      Text('Suhu dalam Kelvin'),
                      Text(
                        '$_celciusToKelvin',
                        style: TextStyle(fontSize: 50),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('Suhu dalam Reamur'), 
                      Text(
                        '$_celciusToReamur',
                        style: TextStyle(fontSize: 50),
                      ),
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: (){
                },
                child: Container(
                  width: 320.0,
                  color: Colors.blue,
                  child: Text('Konversi Suhu', textAlign: TextAlign.center,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
