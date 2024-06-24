//tipagem para o produto
class Product {
  String image;
  String productName;
  String initialPrice;
  String discountPrice;
  String parcelPrice;
  String parcelTimes;

  Product({
    required this.productName,
    required this.image,
    required this.initialPrice,
    required this.discountPrice,
    required this.parcelPrice,
    required this.parcelTimes,
  });
}
