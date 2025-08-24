import 'package:flutter/material.dart';

import 'child_dashboard.dart';

class HomeComponent extends StatefulWidget {
  const HomeComponent({super.key});

  @override
  State<HomeComponent> createState() => _HomeComponentState();
}

class _HomeComponentState extends State<HomeComponent> {
  final List<String> childNames = ['Pranay Kohad', 'Pawan Kohad'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(title: const Text('Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: childNames.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: double.infinity,
                    child: ChildDashboard(childName: childNames[index]),
                  ),
                ),
                if (index < childNames.length - 1)
                  const SizedBox(height: 16),
              ],
            );
          },
        ),
      ),
    );
  }
}
