import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NavigasyonIslemleri extends StatelessWidget {
  String baslik = "B Sayfası";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigasyon Kullanımları",
            style: TextStyle(
              fontSize: 20,
              color: Colors.green[200],
            )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ASayfasi()));
              },
              child: Text("A Sayfasına git",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              color: Colors.green[200],
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BSayfasi(baslik)));
              },
              child: Text("B Sayfasına git ve Veri Gönder",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              color: Colors.red[200],
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CSayfasi()));
              },
              child: Text("C Sayfasına git ve Geri Dön",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              color: Colors.purple[200],
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DSayfasi()))
                    .then((value) => Fluttertoast.showToast(
                        msg: "then kullanıldı ve anasayfaya gelindi + $value"));
              },
              child: Text("D Sayfasına git ve Gelirken Veri Getir",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              color: Colors.blue[200],
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ESayfasi()));
              },
              child: Text("E Sayfasına Git ve Geriyle Uygulamadan Çık",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              color: Colors.yellow[200],
            ),
            RaisedButton(
              // F sayfasına gidecek ardından G sayfasına gidecek ama pushReplacement sayesinde geri gelirken F sayfasını atlayıp direkt ana sayfaya dönecek
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FSayfasi()));
              },
              child: Text("F Sayfasına Git",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              color: Colors.brown[200],
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/listeSayfasinaGit");
              },
              child: Text("Liste Sayfası",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              color: Colors.black87,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/listeDetayaGit/");
              },
              child: Text("Liste Detay  Sayfası",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              color: Colors.black87,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/textfieldIslemleri");
              },
              child: Text("Textfield İşlemleri Sayfası",
                  style: TextStyle(color: Colors.black54, fontSize: 20)),
              color: Colors.blue,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/formIslemleri");
              },
              child: Text("Form İşlemleri Sayfası",
                  style: TextStyle(color: Colors.black54, fontSize: 20)),
              color: Colors.orange,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/digerFormIslemleri");
              },
              child: Text("Diğer Form Elemanları Sayfası",
                  style: TextStyle(color: Colors.black54, fontSize: 20)),
              color: Colors.yellow,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/tarihSaatSayfasi");
              },
              child: Text("Tarih ve Saat  Sayfası",
                  style: TextStyle(color: Colors.black54, fontSize: 20)),
              color: Colors.blue,
            ),RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/stepperSayfasi");
              },
              child: Text("Stepper Sayfası",
                  style: TextStyle(color: Colors.black54, fontSize: 20)),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}

class ASayfasi extends StatelessWidget {
  String baslik;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("A Sayfası",
            style: TextStyle(
              fontSize: 20,
              color: Colors.green[200],
            )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {},
              child: Text("A Sayfası",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              color: Colors.green[200],
            ),
          ],
        ),
      ),
    );
  }
}

class BSayfasi extends StatelessWidget {
  String gelenBaslik;

  BSayfasi(this.gelenBaslik);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(gelenBaslik,
            style: TextStyle(
              fontSize: 20,
              color: Colors.green[200],
            )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {},
              child: Text(gelenBaslik,
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              color: Colors.red[200],
            ),
          ],
        ),
      ),
    );
  }
}

class CSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("C Sayfası",
            style: TextStyle(
              fontSize: 20,
              color: Colors.green[200],
            )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Anasayfaya Geri Dön",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              color: Colors.purple[200],
            ),
          ],
        ),
      ),
    );
  }
}

class DSayfasi extends StatelessWidget {
  int indeks = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: Text("D Sayfası",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green[200],
                )),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context, indeks);
                  },
                  child: Text("Anasayfaya Geri Dön ve  Veri Getir",
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                  color: Colors.blue[200],
                ),
              ],
            ),
          ),
        ),
        onWillPop: () {
          Fluttertoast.showToast(
              msg: "Geri Tuşuyla Çıkamazsınız, On Will Pop Çalıştı");
          Navigator.pop(
              context, indeks); // kendimiz değeri alabiliyoruz sayfadan
          return Future.value(
              false); // ama normalde bu izin vermiyor geri dönmeye ve sayfadan veri getirmiyor
        });
  }
}

class ESayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("E Sayfası",
              style: TextStyle(
                fontSize: 20,
                color: Colors.green[200],
              )),
          centerTitle: true,
        ),
        body: Center(
          child: Text("E Sayfası",
              style: TextStyle(color: Colors.blue[200], fontSize: 20)),
        ));
  }
}

class FSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("F Sayfası",
            style: TextStyle(
              fontSize: 20,
              color: Colors.green[200],
            )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context,
                    "GyeGit"); //  Named metoduyla routes lara tanımladığımızı girdiğimiz yer
              },
              child: Text("G Sayfasına Git",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              color: Colors.red[200],
            ),
          ],
        ),
      ),
    );
  }
}

class GSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("G Sayfası",
              style: TextStyle(
                fontSize: 20,
                color: Colors.green[200],
              )),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "G Sayfası - F den geldiğimizi önemsemeyecek direkt ana ekrana dönecek",
                  style: TextStyle(color: Colors.red[200], fontSize: 20)),
            ],
          ),
        ));
  }
}

class GirisResimSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Resim Sayfası",
              style: TextStyle(
                fontSize: 20,
                color: Colors.green[200],
              ),
              textAlign: TextAlign.center),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              "assets/images/manzara.jpg",
              fit: BoxFit.fill,
              width: 800,
              height: 600,
            ),
            RaisedButton(
              padding: EdgeInsets.all(8),
              child: Text(
                "Uygulama girmek için basın",
                style: TextStyle(color: Colors.black87, fontSize: 20),
              ),
              onPressed: () {
                Navigator.popAndPushNamed(context,
                    "AnaSayfayaGit"); // popAndPushNamed bizi resim sayfasındna ana sayfaya atar ve resim syffasına geri dönülemez
              },
              color: Colors.yellow[300],
            ),

          ],
        )));
  }
}

class ListeSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Liste Sayfası",
              style: TextStyle(
                fontSize: 20,
                color: Colors.green[200],
              )),
        ),
        body: ListView.builder(
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                 // Navigator.push(context, MaterialPageRoute(builder: (context) => ListeDetay(index)));
                   Navigator.pushNamed(context, "/detay/$index");

                },
                child: Center(child: Text("Liste Elemanı $index", style: TextStyle(fontSize: 20))) ,
              );
            }));
  }
}

class ListeDetay extends StatelessWidget {
  int tiklananIndex = 0;

  ListeDetay(this.tiklananIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Liste Detay Sayfası",),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Liste Elemanı $tiklananIndex", style: TextStyle(fontSize: 20),),
            ],
          ),
        ));
  }
}
