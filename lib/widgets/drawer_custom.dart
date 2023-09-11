import 'package:app_anhanguera/repositories/destinations.dart';
import 'package:flutter/material.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    final DestinationRepository repository = DestinationRepository();

    return Drawer(
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
        );
  }
}