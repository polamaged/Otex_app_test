class ProductEntity {
  final int productId;
  final String productImageURL;
  final String brandImageURL;
  final double price;
  final String productName;
  final int discountPrice;
  final int categoryId;

  ProductEntity({
    required this.productId,
    required this.productImageURL,
    required this.brandImageURL,
    required this.price,
    required this.productName,
    required this.discountPrice,
    required this.categoryId,
  });
}
