class ProductModel {
  String id;
  String title;
  String imageUrl;

  ProductModel({this.id = '', this.title = '', this.imageUrl = ''});
}

class ProductExample {
  String title;
  String imageUrl;

  ProductExample({this.title = '', this.imageUrl = ''});

  static List<ProductExample> products = <ProductExample>[
    ProductExample(
      imageUrl:
          'https://images.grocery.yandex.net/2888787/1ca1b292ece34ccd8611e567c486d137/512x512.png',
      title: 'Напиток Pepsi Max',
    ),
    ProductExample(
      imageUrl:
          'https://images.grocery.yandex.net/2750890/ca1289cf399348a0bc1930d28de15858/512x512.png',
      title: 'Напиток Pepsi',
    ),
    ProductExample(
      imageUrl:
          'https://images.grocery.yandex.net/2756334/76e46a91fe9447ddbd28f122c1bdaee2/512x512.png',
      title: 'Напиток Sprite',
    ),
    ProductExample(
      imageUrl:
          'https://images.grocery.yandex.net/2756334/8364cd7694ce444ca1d4aac4ae3bb330/464x464.png',
      title: 'Напиток Coca-Cola Ваниль',
    ),
    ProductExample(
      imageUrl:
          'https://images.grocery.yandex.net/2998515/e751728889bc4b49b62792f1eba780b1/464x464.png',
      title: 'Напиток Fanta Апельсин',
    ),
    ProductExample(
      imageUrl:
          'https://images.grocery.yandex.net/2783132/e2c4f47b7e734a1cafae522e67ce3f2e/464x464.png',
      title: 'Напиток Coca Cola Яблоко-бузина',
    ),
    ProductExample(
      imageUrl:
          'https://images.grocery.yandex.net/2998515/3201f06b6ac64d2aa36557536b6336d7/464x464.png',
      title: 'Напиток Dr.Pepper Cherry Vanilla (США)',
    ),
    ProductExample(
      imageUrl:
          'https://images.grocery.yandex.net/2756334/42e94bf28ff645f3a1d471e264d866cb/512x512.png',
      title: 'Газированный напиток Sanpellegrino Chinotto Померанец',
    ),
    ProductExample(
      imageUrl:
          'https://images.grocery.yandex.net/2998515/a595cfc8d3ed4a3db9dbc5d85fddef11/464x464.png',
      title: 'Напиток «Сенежская» Immuno Лемонграсс',
    ),
    ProductExample(
      imageUrl:
          'https://images.grocery.yandex.net/2791769/228cff3f61c84d51a4971f76931526d7/464x464.png',
      title: 'Лимонад Bandaberg «Тропический манго»',
    ),
  ];
}
