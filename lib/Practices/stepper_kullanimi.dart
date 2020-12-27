import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StepperKullanimi extends StatefulWidget {
  @override
  _StepperKullanimiState createState() => _StepperKullanimiState();
}

class _StepperKullanimiState extends State<StepperKullanimi> {
  int _gecerliStep = 0;
  String eposta, sifre, ekstra;
  List<Step> initStepler;
  bool hata = false;
  var key0 = GlobalKey<FormFieldState>();
  var key1 = GlobalKey<FormFieldState>();
  var key2 = GlobalKey<FormFieldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    initStepler = _tumStepler();
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Stepper(
          steps: initStepler,
          currentStep: _gecerliStep,
          onStepTapped: (tiklananStep) {
            setState(() {
              _gecerliStep = tiklananStep;
            });
          },
          onStepContinue: () {
            setState(() {
              _contButonKontrolu();
            });
          },
          onStepCancel: () {
            setState(() {
              if (_gecerliStep > 0) {
                _gecerliStep--;
              } else {
                _gecerliStep = 0;
              }
            });
          },
        ),
      ),
    );
  }

  List<Step> _tumStepler() {
    List<Step> stepler = [
      Step(
          title: Text("E posta adresi: "),
          state: _stateleriKontrolEt(0),
          isActive: true,
          content: TextFormField(
            key: key0,
            decoration: InputDecoration(
                hintText: "Mesmerized", border: OutlineInputBorder()),
            validator: (girilenDeger) {
              if (girilenDeger.length < 6 || !girilenDeger.contains("@")) {
                // ignore: missing_return
                return "Geçersiz eposta adresi";
              }
            },
            onSaved: (deger) {
              eposta = deger;
            },
          )),
      Step(
          title: Text("Şifre: "),
          state: _stateleriKontrolEt(1),
          isActive: true,
          content: TextFormField(
              key: key1,
              decoration: InputDecoration(
                  hintText: "*****", border: OutlineInputBorder()),
              validator: (girilenDeger) {
                if (girilenDeger.length < 6 ) {
                  // ignore: missing_return
                  return "Zayıf şifre";
                }
              },
              onSaved: (deger) {
                sifre = deger;
              })),
      Step(
          title: Text("Ekstra Bilgiler: "),
          state: _stateleriKontrolEt(2),
          isActive: true,
          content: TextFormField(
              key: key2,
              decoration: InputDecoration(
                  hintText: "Ekstra", border: OutlineInputBorder()),
              onSaved: (deger) {
                ekstra = deger;
              })),
    ];
    return stepler;
  }

  StepState _stateleriKontrolEt(int oankiStep) {
    if (_gecerliStep == oankiStep) {
      if (hata) {
        return StepState.error;
      } else {
        return StepState.editing;
      }
    } else {
      return StepState.complete;
    }
  }

  void _contButonKontrolu() {
    switch (_gecerliStep) {
      case 0:
        if (key0.currentState.validate()) {
          key0.currentState.save();
          StepState.complete;
          hata = false;
          _gecerliStep = 1;
        } else {
          hata = true;
          StepState.error;
        }
        break;

      case 1:
        if (key1.currentState.validate()) {
          key1.currentState.save();
          StepState.complete;
          hata = false;
          _gecerliStep = 2;
        } else {
          hata = true;
        }
        break;
      case 2:
        if (key2.currentState.validate()) {
          key2.currentState.save();
          StepState.complete;
          hata = false;
          _gecerliStep = 2;
        } else {
          hata = true;
        }
        break;
    }
  }
}
