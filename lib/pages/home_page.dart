import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Sugar',
        price: 5000,
        imageUrl: 'assets/sugar.jpg',
        stock: 70,
        rating: 4.2),
    Item(
        name: 'Salt',
        price: 5000,
        imageUrl: 'assets/salt.png',
        stock: 54,
        rating: 4.6),
    Item(
        name: 'Rice',
        price: 5000,
        imageUrl: 'assets/rice.png',
        stock: 12,
        rating: 4.8),
    Item(
        name: 'Milk',
        price: 5000,
        imageUrl: 'assets/milk.png',
        stock: 20,
        rating: 4.9),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Item'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Jumlah kolom dalam grid
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        padding: EdgeInsets.all(8),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/item', arguments: item);
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: item.name,
                    child: Image.network(
                      item.imageUrl,
                      height: 100,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(item.name),
                  ),
                  Text('Stock: ${item.stock}'),
                  Text('Rating: ${item.rating}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
