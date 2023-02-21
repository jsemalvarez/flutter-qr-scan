import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/pages/direcciones_page.dart';
import 'package:qr_reader/pages/mapas_page.dart';
import 'package:qr_reader/providers/ui_provider.dart';
import 'package:qr_reader/widgets/custom_navigationbar.dart';
import 'package:qr_reader/widgets/scan_bottom.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historial'),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: (() {}), 
            icon: const Icon(Icons.delete_forever)
          )
        ],
      ),
      body: const _HomeBody(),
      floatingActionButton:const ScanButtom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:const CustomNavigationbar(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final int currentIndex = uiProvider.selectedMenuOpt;

    switch( currentIndex){

      case 0:
        return const MapasPage();

      case 1:
        return const DireccionesPage();

      default:
        return const MapasPage();
    }
  }
}