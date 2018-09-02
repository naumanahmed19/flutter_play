import 'rating.dart';

class Product {
  Product({
    this.id,
    this.bannerUrl,
    this.title,
    this.size,
    this.thumbnailUrl,
    this.downloads,
    this.category,
    this.description,
    this.attachments,
    this.rating,
  });
  final String id;
  final String bannerUrl;
  final String title;
  final String size;
  final String thumbnailUrl;

  final String downloads;
  final String category;
  final String description;
  final List<String> attachments;
  final List<Rating> rating;
}
