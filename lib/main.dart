import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:menu_plus_basket/models/product.dart';
import 'package:menu_plus_basket/screens/catalog/catalog.dart';
import 'package:menu_plus_basket/screens/catalog/catalog_cubit.dart';
import 'package:menu_plus_basket/screens/catalog/catalog_observer.dart';
import 'package:menu_plus_basket/utils.dart';

void main() {
  Bloc.observer = CatalogObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Menu Plus Basket',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            brightness: Brightness.dark,
            toolbarHeight: 0.0,
            systemOverlayStyle:
                SystemUiOverlayStyle(statusBarColor: Colors.white),
          ),
          body: SafeArea(
            bottom: false,
            child: BlocProvider(
              create: (context) => CatalogCubit(),
              child: BlocBuilder<CatalogCubit, List<ProductModel>>(
                  builder: (context, state) {
                var productCount =
                    "${state.length} ${Format.wordForm(state.length, [
                      'товар',
                      'товара',
                      'товаров'
                    ])}";
                return Container(
                    color: Colors.black,
                    child: Column(children: [
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                                textDirection: TextDirection.ltr,
                                text: TextSpan(
                                  text: "Меню",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFFFFFFF)),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: " - $productCount ",
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFFFFFFFF)
                                                .withOpacity(0.5))),
                                  ],
                                )),
                            GestureDetector(
                              onTap: () {
                                context.read<CatalogCubit>().add();
                                HapticFeedback.lightImpact();
                              },
                              child: Container(
                                height: 32.0,
                                width: 32.0,
                                decoration:
                                    BoxDecoration(color: Color(0xFF2F54EB)),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 24.0,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          child: Catalog(
                        products: state,
                      ))
                    ]));
              }),
            ),
          )),
    );
  }
}
