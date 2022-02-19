class HomeFood {
  final String id;
  final String name;
  final String category;
  final String origin;
  final String imgUrl;

  HomeFood(this.id, this.name, this.category, this.origin, this.imgUrl);

  factory HomeFood.fromJson(Map<String, dynamic> json) {
    return HomeFood(json['idMeal'], json['strMeal'], json['strCategory'],
        json['strArea'], json['strMealThumb']);
  }

  static List<HomeFood> recipesFromSnapshot(List snapshot){
    return snapshot.map((data){
      return HomeFood.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'HomeFood {name: $name, image: $imgUrl, category: $category, origin: $origin}';
  }
}

class HomeCategory{
  final String category;
  final String image;

  HomeCategory(this.category, this.image);

  factory HomeCategory.fromJson(Map<String, dynamic> json){
    return HomeCategory(json['strCategory'], json['strCategoryThumb']);
  }

  static List<HomeCategory> recipesFromSnapshot(List snapshot){
    return snapshot.map((data){
      return HomeCategory.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'HomeFood {category: $category, image: $image}';
  }
}