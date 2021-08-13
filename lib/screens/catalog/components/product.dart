import 'package:flutter/material.dart';
import 'package:menu_plus_basket/models/product.dart';

typedef CallbackRemoveProduct = void Function(String productId);

class Product extends StatelessWidget {
  final ProductModel product;
  final CallbackRemoveProduct onRemoveProduct;

  const Product({
    Key? key,
    required this.product,
    required this.onRemoveProduct,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            onRemoveProduct(product.id);
          },
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 32.0,
              width: 32.0,
              decoration: BoxDecoration(color: Color(0xFF2F54EB)),
              child: Icon(
                Icons.delete,
                color: Colors.white,
                size: 24.0,
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 28.0),
                  child: Container(
                    child: Image.network(product.imageUrl),
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                child: Text(
                  product.title,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFFFFFF)),
                ))
          ],
        ),
      ],
    );
  }
}
