import 'dart:ffi';

class Product {
  late String name;
  late String fullname;
  late double price;
  late String brand;
  late String category;
  late String details;

  Product({required String name, required double price}) {
    name = name;
  }
}
