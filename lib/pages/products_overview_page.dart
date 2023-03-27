import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/product_grid.dart';
import 'package:shop/models/product_list.dart';

enum FilterOptions {
  Favorite,
  All,
}

class ProductsOverviewPage extends StatelessWidget {
  const ProductsOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductList>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('My Store'),
        ),
        actions: [
          PopupMenuButton(
              icon: const Icon(Icons.more_vert),
              itemBuilder: (_) => [
                    const PopupMenuItem(
                      value: FilterOptions.Favorite,
                      child: Text('Favorites only'),
                    ),
                    const PopupMenuItem(
                      value: FilterOptions.All,
                      child: Text('All'),
                    )
                  ],
              onSelected: (FilterOptions selectedValue) {
                if(selectedValue == FilterOptions.Favorite) {
                  provider.showFavoriteOnly();
                } else {
                  provider.showAll();
                }
              })
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: ProductGrid(),
      ),
    );
  }
}
