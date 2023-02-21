import 'package:flutter/material.dart';

import 'package:qr_reader/pages/home_page.dart';
import 'package:qr_reader/pages/mapa_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Reader',
      initialRoute: 'home',
      routes: {
        'home':(context) => const HomePage(),
        'mapa':(context) => const MapaPage()
      },
      theme: ThemeData(
        // establece el color principal de la aplicación, 
        //sin embargo no afecta directamente al color de la AppBar
        // primaryColor: Colors.deepPurple,
        primarySwatch: Colors.deepPurple,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.deepPurple
        )
      ),
      
    );
  }
}