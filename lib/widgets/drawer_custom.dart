import 'package:anhangueraonline/repositories/destinations.dart';
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
          final destination = repository.destinations[index];
          return (ListTile(
            title: Text(destination.label),
            leading: destination.icon,
            onTap: () => destination.page != null
                ? Navigator.push(context,
                    MaterialPageRoute(builder: (context) => destination.page!))
                : null,
          ));
        },
      ),
    );
  }
}
