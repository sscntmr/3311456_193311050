import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlarmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hatırlatıcılar')),
      body: Center(
        child: Text('Hatırlatıcı sayfası'),
      ),
    );
  }
}
