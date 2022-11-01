import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class ModToolsScreen extends StatelessWidget {
  const ModToolsScreen({required this.name, super.key});
  final String name;
  void navigateToMoods(BuildContext context) {
    Routemaster.of(context).push('/edit-tools/$name');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mod Tools")),
      body: Column(
        children: [
          ListTile(
            title: const Text("Add Modaretors"),
            onTap: () {},
            leading: const Icon(Icons.add_moderator),
          ),
          ListTile(
            title: const Text("Edit Community"),
            onTap: () {
              navigateToMoods(context);
            },
            leading: const Icon(Icons.edit),
          )
        ],
      ),
    );
  }
}
