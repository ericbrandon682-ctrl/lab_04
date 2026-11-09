import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  Widget _menuCard(
    BuildContext context,
    String title,
    String route,
    IconData icon,
  ) {
    return Card(
      key: Key('card_$route'),
      color: Colors.orange,
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: Icon(icon, color: Colors.white, size: 36),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: const Icon(Icons.chevron_right, color: Colors.white),
        onTap: () => Navigator.pushNamed(context, route),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pizza Store Menu')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _menuCard(context, 'Vegetable Pizza', 'vegetable', Icons.local_pizza),
          _menuCard(
            context,
            'Cheese Pizza',
            'cheese',
            Icons.local_pizza_outlined,
          ),
          _menuCard(context, 'Box of Fries', 'fries', Icons.fastfood),
        ],
      ),
    );
  }
}
