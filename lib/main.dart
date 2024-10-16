import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rangli GridView'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: 12, // 12 ta element
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, // 4 ustun
              crossAxisSpacing: 8, // Ustunlar orasidagi masofa
              mainAxisSpacing: 8, // Qatorlar orasidagi masofa
            ),
            itemBuilder: (context, index) {
              return Card(
                color:
                    _getColorForIndex(index), // Har bir elementga turli ranglar
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      20), // Elementlarni yanada yumaloq qilish
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        _getIconForIndex(
                            index), // Har bir elementga turli ikonkalar
                        size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(height: 8),
                      Text(
                        _getTitleForIndex(index), // Element nomlari
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  // Turli belgilar (ikonkalar) olish uchun yordamchi funksiyalar
  IconData _getIconForIndex(int index) {
    switch (index) {
      case 0:
        return Icons.home;
      case 1:
        return Icons.favorite;
      case 2:
        return Icons.person;
      case 3:
        return Icons.work;
      case 4:
        return Icons.school;
      case 5:
        return Icons.settings;
      case 6:
        return Icons.phone;
      case 7:
        return Icons.camera;
      case 8:
        return Icons.map;
      case 9:
        return Icons.music_note;
      case 10:
        return Icons.directions_bike;
      case 11:
        return Icons.shopping_cart;
      default:
        return Icons.help;
    }
  }

  // Turli nomlarni olish uchun yordamchi funksiyalar
  String _getTitleForIndex(int index) {
    switch (index) {
      case 0:
        return 'Uy';
      case 1:
        return 'Sevimli';
      case 2:
        return 'Profil';
      case 3:
        return 'Ish';
      case 4:
        return 'O‘quv';
      case 5:
        return 'Sozlamalar';
      case 6:
        return 'Telefon';
      case 7:
        return 'Kamera';
      case 8:
        return 'Xarita';
      case 9:
        return 'Musiqa';
      case 10:
        return 'Velosiped';
      case 11:
        return 'Xaridlar';
      default:
        return 'Noma\'lum';
    }
  }

  // Ranglarni olish uchun yordamchi funksiyalar
  Color _getColorForIndex(int index) {
    switch (index) {
      case 0:
        return Colors.deepPurple;
      case 1:
        return Colors.blue;
      case 2:
        return Colors.green;
      case 3:
        return Colors.orange;
      case 4:
        return Colors.red;
      case 5:
        return Colors.pink;
      case 6:
        return Colors.yellow;
      case 7:
        return Colors.cyan;
      case 8:
        return Colors.brown;
      case 9:
        return Colors.purple;
      case 10:
        return Colors.teal;
      case 11:
        return Colors.lime;
      default:
        return Colors.grey;
    }
  }
}
