import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:menu_plus_basket/models/product.dart';
import 'package:uuid/uuid.dart';

class CatalogCubit extends Cubit<List<ProductModel>> {
  final _uuid = Uuid();
  final _random = new Random();
  final _productExamples = ProductExample.products;

  CatalogCubit() : super([]) {
    List<ProductModel> products = [];

    var randomNumber = _random.nextInt(100000) + 10000;

    for (var i = 0; i < randomNumber; i++) {
      var productIndex = _random.nextInt(_productExamples.length);
      var product = ProductModel(
          id: _uuid.v4(),
          title: _productExamples[productIndex].title,
          imageUrl: _productExamples[productIndex].imageUrl);
      products.add(product);
    }

    emit(products);
  }

  void add() {
    var productIndex = _random.nextInt(_productExamples.length);
    var product = ProductModel(
        id: _uuid.v4(),
        title: _productExamples[productIndex].title,
        imageUrl: _productExamples[productIndex].imageUrl);
    emit([product, ...state]);
  }

  void remove(String productId) {
    final updatedProducts =
        state.where((product) => product.id != productId).toList();
    emit(updatedProducts);
  }
}
