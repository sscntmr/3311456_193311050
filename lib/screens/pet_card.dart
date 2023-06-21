import 'pets_details.dart';
import 'package:flutter/material.dart';

class PetCard extends StatelessWidget {
  final String petName;
  final IconData petIcon;

  PetCard({required this.petName, required this.petIcon});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PetsDetailPage(habitName: petName),
            ),
          );
        },
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                petIcon,
                size: 48.0,
              ),
              SizedBox(height: 8.0),
              Text(
                petName,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
