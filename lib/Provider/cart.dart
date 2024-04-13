import 'package:flutter/material.dart';

import '../model/model.dart';

// ignore: camel_case_types
class cart extends ChangeNotifier {
  List selectedProducts = [];
  int priceProduct = 0;
  add(Item product) {
    selectedProducts.add(product);
    priceProduct += product.price;
    notifyListeners();
  }

  delete(Item product) {
    selectedProducts.remove(product);
     priceProduct -= product.price;
    notifyListeners();
  }
}
