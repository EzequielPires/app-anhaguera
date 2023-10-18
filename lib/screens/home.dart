import 'package:anhangueraonline/models/category.dart';
import 'package:anhangueraonline/repositories/destinations.dart';
import 'package:anhangueraonline/widgets/buttons/consult.dart';
import 'package:anhangueraonline/widgets/cards/action.dart';
import 'package:anhangueraonline/widgets/cards/category.dart';
import 'package:anhangueraonline/widgets/drawer_custom.dart';
import 'package:anhangueraonline/widgets/sections/grid_home.dart';
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
      body: CustomScrollView(
        slivers: [
          const SliverPadding(
            padding: EdgeInsets.only(left: 16, top: 24, right: 16),
            sliver: SectionGridHome(),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 16, bottom: 24, right: 16),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  const ButtonConsult(),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      CardAction(
                        category: Category(
                            id: 1, name: '', image: 'images/transp.png'),
                        url: 'https://anhanguera.megasofttransparencia.com.br/',
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      CardAction(
                        category: Category(
                            id: 1, name: '', image: 'images/noticias.png'),
                        url: 'https://anhanguera.go.gov.br/Noticias,NT.html',
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: const DrawerCustom(),
    );
  }
}
