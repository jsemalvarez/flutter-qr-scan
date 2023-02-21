import 'package:flutter/material.dart';

class CustomNavigationbar extends StatelessWidget {
  const CustomNavigationbar({super.key});

  @override
  Widget build(BuildContext context) {

    const currentIndex = 0;
    
    return BottomNavigationBar(
      elevation: 0,
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Mapa'
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration),
          label: 'Direcciones'
        )
      ]
    );
  }
}