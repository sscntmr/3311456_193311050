import 'package:flutter/material.dart';
import '/screens/login_pages.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profil')),
      body: Padding(
        padding: EdgeInsets.all(60.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            /* CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/profile_picture.jpg'),
            ),*/
            SizedBox(height: 16.0),
            Text(
              'Kullanıcı Adı',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'kullanici_adi@gmail.com',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Profil düzenleme sayfasına yönlendirme kodları buraya gelecek
                Navigator.pushNamed(context, '/profile');
              },
              child: Text('Profili Düzenle'),
            ),
            ElevatedButton(
              onPressed: () {
                // Çıkış yapma kodları buraya gelecek
                _showLogoutDialog(context);
              },
              child: Text('Çıkış Yap'),
            ),
          ],
        ),
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Çıkış Yap'),
          content: Text('Emin misiniz?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Hayır'),
            ),
            TextButton(
              onPressed: () {
                // Çıkış yapma kodları buraya gelecek
                // Örneğin: Auth servisi ile oturum kapatma işlemi
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text('Evet'),
            ),
          ],
        );
      },
    );
  }
}
