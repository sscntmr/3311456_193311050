import 'package:flutter/material.dart';
import 'hatirlatici_sayfasi.dart';
import 'pet_card.dart';
import 'profile_sayfasi.dart';
import 'takvim_sayfasi.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('EVCİL HAYVAN DEFTERİM')),
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                PetCard(
                  petName: 'Evcil Hayvan Oyunları',
                  petIcon: Icons.pets,
                ),
                PetCard(
                  petName: 'Evcil Hayvan Bilgilendirme Notları',
                  petIcon: Icons.lightbulb,
                ),
                PetCard(
                  petName: 'Yakındaki Petshoplar',
                  petIcon: Icons.not_listed_location_outlined,
                ),
                PetCard(
                  petName: 'Evcil Hayvan Malzemeleri',
                  petIcon: Icons.construction,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.calendar_month),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalendarPage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.alarm),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AlarmPage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.account_circle_rounded),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
