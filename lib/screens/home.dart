import 'package:app_anhanguera/repositories/destinations.dart';
import 'package:app_anhanguera/widgets/buttons/consult.dart';
import 'package:app_anhanguera/widgets/sections/grid_home.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final DestinationRepository repository = DestinationRepository();

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
            child: const Column(
              children: [
                SectionGridHome(),
                SizedBox(height: 24,),
                ButtonConsult()
              ],
            ),
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          child: ListView.builder(
            itemCount: repository.destinations.length,
            itemBuilder: (context, index) {
              return (ListTile(
                title: Text(repository.destinations[index].label),
                leading: repository.destinations[index].icon,
                onTap: () => showDialog(
                  context: context,
                  builder: (context) => Dialog(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      child: const Text('Deu certo'),
                    ),
                  ),
                ),
              ));
            },
          ),
        ));
  }
}
