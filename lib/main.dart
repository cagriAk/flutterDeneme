// ignore_for_file: deprecated_member_use, unused_local_variable, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  String message = "selam cagri";
  var ogrenciler = ["cagri akbaba", "cemal akbaba", "ayhan akbaba"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(message),
        ),
        body: buildBody(context));
  }

  String sinavHesapla(int not) {
    String mesaj;
    if (not >= 50) {
      mesaj = "geçti";
    } else if (not >= 40) {
      mesaj = "Bütünleme";
    } else {
      mesaj = "kaldi";
    }

    return mesaj;
  }

  void mesajGoster(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Sınav Sonucu"),
      content: Text(sinavHesapla(75)),
    );

    showDialog(context: context, builder: (BuildContext context) => alert);
  }

  Widget buildBody(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
                itemCount: ogrenciler.length,
                itemBuilder: (BuildContext context, int index) {
                  return Text(ogrenciler[index]);
                })),
        Center(
          child: RaisedButton(
            child: Text("Sonucu Gör !!"),
            onPressed: () {
              mesajGoster(context);
            },
          ),
        ),
      ],
    );
  }
}
