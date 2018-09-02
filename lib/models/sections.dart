import '../models/product.dart';

class Sections {
  Sections({
    this.type,
    this.moreUrl,
    this.products,
  });

  final String type;
  final String moreUrl;
  final List<Product> products;
}
