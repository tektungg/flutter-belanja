import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(itemArgs.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Product: ${itemArgs.name}', style: TextStyle(fontSize: 24)),
            SizedBox(height: 8),
            Text('Price: Rp ${itemArgs.price}', style: TextStyle(fontSize: 20)),
            // Tambahkan elemen lain yang relevan seperti deskripsi, rating, stok, dll.
          ],
        ),
      ),
    );
  }
}
