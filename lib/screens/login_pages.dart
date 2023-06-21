import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Eklenen import
import 'anasayfa.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Kullanıcı resmi

              SizedBox(
                  height:
                      10), // Opsiyonel: Resim ile diğer widget'lar arasına boşluk ekleyebilirsiniz

              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Kullanıcı Adı veya E-posta',
                ),
              ),
              TextFormField(
                //Textfield doğrulama yapmadığı için bunu kullandık
                decoration: InputDecoration(
                  hintText: 'Şifre', //label yukarı metni veriyor
                ),
                keyboardType: TextInputType.number, // keyboardType eklendi
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter
                      .digitsOnly // inputFormatters eklendi
                ],
                obscureText: true, // Şifre gizleme
              ),
              SizedBox(
                  height: 30), //bu kısımla widget lar arasına boşluk verdim
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text('Giriş'),
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/createAccount');
                  },
                  child: Text('Create Accouunt')),
            ],
          ),
        ));
  }
}
