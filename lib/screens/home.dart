import 'package:app_anhanguera/models/category.dart';
import 'package:app_anhanguera/repositories/destinations.dart';
import 'package:app_anhanguera/widgets/buttons/consult.dart';
import 'package:app_anhanguera/widgets/cards/action.dart';
import 'package:app_anhanguera/widgets/cards/category.dart';
import 'package:app_anhanguera/widgets/drawer_custom.dart';
import 'package:app_anhanguera/widgets/sections/grid_home.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset('assets/logo.png', height: 64),
          centerTitle: true,
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          shadowColor: Colors.black26,
          elevation: 2,
          toolbarHeight: 72,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              children: [
                const SectionGridHome(),
                const SizedBox(height: 24,),
                const ButtonConsult(),
                const SizedBox(height: 24,),
                Row(
                  children: [
                    CardAction(category: Category(id: 1, name: '', image: 'images/transp.png'), url: 'https://anhanguera.megasofttransparencia.com.br/',),
                    const SizedBox(width: 8,),
                    CardAction(category: Category(id: 1, name: '', image: 'images/noticias.png'), url: 'https://anhanguera.go.gov.br/Noticias,NT.html',)
                  ],
                )
              ],
            ),
          ),
        ),
        drawer: const DrawerCustom(),
        );
  }
}
