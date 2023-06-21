import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Takvim')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // TableCalendar widget'ını buraya ekleyebilirsiniz
            TableCalendar(
              focusedDay: DateTime.now(), // Şu anki tarih
              firstDay: DateTime.utc(2020, 1, 1), // Takvimin ilk günü
              lastDay: DateTime.utc(2030, 12, 31), // Takvimin son günü
              // Takvim widget'ının ayarlarını ve verilerini burada yapılandırabilirsiniz
            ),
          ],
        ),
      ),
    );
  }
}
