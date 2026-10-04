class Food{
  String price;
  String name;
  String imagePath;
  String rating;

  Food({required this.price,required this.name,required this.imagePath,required this.rating});
   String get _price=> price;
  String get _name=> name;
  String get _imagePath=> imagePath;
  String get _rating=> rating;

}