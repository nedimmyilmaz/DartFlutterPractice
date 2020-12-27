import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormVeTextFormIslemleri extends StatefulWidget {
  @override
  _FormVeTextFormIslemleriState createState() =>
      _FormVeTextFormIslemleriState();
}

class _FormVeTextFormIslemleriState extends State<FormVeTextFormIslemleri> {
  String _email, _sifre;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      // Theme.of(context).copyWith( accentColor: Colors.purple), // özelleştirme için yapılır
      child: Scaffold(
        appBar: AppBar(
          title: Text("Form İşlemleri"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.touch_app_sharp),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.always,
              child: ListView(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail_outline),
                        labelText: "e-posta",
                        hintText: "e-posta adresinizi girin",
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.purple, width: 3))),
                    keyboardType: TextInputType.emailAddress,
                    validator: (String input) {
                      if (input.length < 6)
                        return "6 karakterden az giremezsin";
                      else
                        return null;
                    },
                    onSaved: (deger) => _email = deger,
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.security),
                        labelText: "şifre",
                        hintText: "şifrenizi girin",
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.purple, width: 3))),
                    keyboardType: TextInputType.visiblePassword,
                    onSaved: (deger) => _sifre = deger,
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  RaisedButton.icon(
                      onPressed: _bilgileriOnayla,
                      icon: Icon(Icons.done_all_sharp),
                      label: Text("Kaydetmek için bas"))
                ],
              )),
        ),
      ),
    );
  }

  void _bilgileriOnayla() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      debugPrint("mail: $_email,  şifre : $_sifre");
    }
  }
}
