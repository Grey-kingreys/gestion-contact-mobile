import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
  @override
  State<Dashboard> createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {

  final bool _isConnected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carnet d'adresses"),
      ),
      drawer: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        width: MediaQuery.of(context).size.width * 0.75,
        elevation: 10,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Container(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: const CircleAvatar(
                radius: 40,
                child: Icon(Icons.person, size: 40),
              ),
            ),
            const Divider(),
            Card(
              child: ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Acceuil"),
                onTap: () {
                  // Navigation vers la page d'accueil
                },
              ),
            ),

            if (_isConnected)
              Card(
                child: ListTile(
                  leading: const Icon(Icons.contacts),
                  title: const Text("Mes contacts"),
                  onTap: () {
                    // Navigation vers la page des contacts
                  },
                ),
              ),
          ],
        ),
      ),
      body: Center(
        child: Text("Dashboard"),
      ),
    );
  }

}
