import 'package:flutter/material.dart';
import 'package:cross_plateform_one/models/product_models.dart';

class ProductDetailsPage extends StatelessWidget {
  final Product product;

  const ProductDetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image(
                image: AssetImage(product.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              product.name,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '${product.price.toStringAsFixed(2)} €',
              style: const TextStyle(
                fontSize: 18,
                color: Colors.green,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              product.description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                // Exemple d’action : ajouter au panier
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${product.name} ajouté au panier')),
                );
              },
              icon: const Icon(Icons.shopping_cart),
              label: const Text('Ajouter au panier'),
            ),
          ],
        ),
      ),
    );
  }
}
