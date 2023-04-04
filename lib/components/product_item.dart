import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({
    required this.product,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          product.imageUrl,
        ),
      ),
      title: Text(product.name),
      trailing: SizedBox(
        width: 100,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              color: Theme.of(context).primaryColor,
              icon: const Icon(Icons.edit),
            ),
            IconButton(
              onPressed: () {},
              color: Theme.of(context).errorColor,
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
