import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yeni Kayıt'),
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name '),
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'E-mail'),
            ),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true, // Şifre gizleme
            ),
          ],
        ),
      ),
    );
  }
}
