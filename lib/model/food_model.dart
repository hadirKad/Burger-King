class FoodModel {
  int id;
  String name;
  String price;
  String image;
  String desc;
  num star;
  String type;

  FoodModel(
      {required this.id,
      required this.image,
      required this.name,
      required this.price,
      required this.desc,
      required this.star,
      required this.type});
}
