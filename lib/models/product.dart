class Product {
  Product({
    this.id,
    this.bannerUrl,
    this.title,
    this.size,
    this.thumbnailUrl,
    this.rating,
    this.starRating,
    this.categories,
    this.description,
    this.attachments,
  });
  final String id;
  final String bannerUrl;
  final String title;
  final String size;
  final String thumbnailUrl;
  final double rating;
  final int starRating;
  final List<String> categories;
  final String description;
  final List<String> attachments;
}
