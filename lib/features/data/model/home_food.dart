class HomeFood {

  final String id;
  final String name;
  final String category;
  final String origin;
  final String imgUrl;

  HomeFood(this.id, this.name, this.category, this.origin, this.imgUrl);

  factory HomeFood.fromJson(Map<String, dynamic> json){
    return HomeFood(json['idMeal'], json['strMeal'], json['strCategory'], json['strArea'], json['strMealThumb']);
  }

}
