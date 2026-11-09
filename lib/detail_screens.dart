import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String name;
  final String imagePath;
  final String description;

  const DetailScreen({
    super.key,
    required this.name,
    required this.imagePath,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)), // back arrow = Navigator.pop
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(imagePath, height: 220, fit: BoxFit.cover),
            ),
            const SizedBox(height: 16),
            Text(name, style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 8),
            Text(description, style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ),
    );
  }
}

class VegetableScreen extends StatelessWidget {
  const VegetableScreen({super.key});
  @override
  Widget build(BuildContext context) => const DetailScreen(
    name: 'Vegetable Pizza',
    imagePath: 'assets/images/vegetable.png',
    description:
        'A crispy crust topped with tomato sauce, bell peppers, '
        'onions, mushrooms and olives.',
  );
}

class CheeseScreen extends StatelessWidget {
  const CheeseScreen({super.key});
  @override
  Widget build(BuildContext context) => const DetailScreen(
    name: 'Cheese Pizza',
    imagePath: 'assets/images/cheese.png',
    description:
        'A classic pizza loaded with melted mozzarella and '
        'cheddar on a rich tomato base.',
  );
}

class FriesScreen extends StatelessWidget {
  const FriesScreen({super.key});
  @override
  Widget build(BuildContext context) => const DetailScreen(
    name: 'Box of Fries',
    imagePath: 'assets/images/fries.png',
    description: 'Golden, crispy potato fries, lightly salted and served hot.',
  );
}
