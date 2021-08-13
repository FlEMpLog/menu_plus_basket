import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:menu_plus_basket/models/product.dart';
import 'package:menu_plus_basket/screens/catalog/catalog_cubit.dart';
import 'package:menu_plus_basket/screens/catalog/components/product.dart';

class Catalog extends StatelessWidget {
  final List<ProductModel> products;

  const Catalog({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CatalogCubit, List<ProductModel>>(
        builder: (context, state) {
      return GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        children: List.generate(products.length, (index) {
          return Product(
            product: products[index],
            onRemoveProduct: (productId) {
              HapticFeedback.lightImpact();
              context.read<CatalogCubit>().remove(products[index].id);
            },
          );
        }),
      );
    });
  }
}
