class HomeFood {
  final String id;
  final String name;
  final String category;
  final String origin;
  final String imgUrl;
  final String instruction;
  final String ingri1;
  final String ingri2;
  final String ingri3;
  final String ingri4;
  final String ingri5;
  final String measure1;
  final String measure2;
  final String measure3;
  final String measure4;
  final String measure5;

  HomeFood(
      this.id,
      this.name,
      this.category,
      this.origin,
      this.imgUrl,
      this.instruction,
      this.ingri1,
      this.ingri2,
      this.ingri3,
      this.ingri4,
      this.ingri5,
      this.measure1,
      this.measure2,
      this.measure3,
      this.measure4,
      this.measure5);

  factory HomeFood.fromJson(Map<String, dynamic> json) {
    return HomeFood(
      json['idMeal'],
      json['strMeal'],
      json['strCategory'],
      json['strArea'],
      json['strMealThumb'],
      json['strInstructions'],
      json['strIngredient1'],
      json['strIngredient2'],
      json['strIngredient3'],
      json['strIngredient4'],
      json['strIngredient5'],
      json['strMeasure1'],
      json['strMeasure2'],
      json['strMeasure3'],
      json['strMeasure4'],
      json['strMeasure5'],
    );
  }

  static List<HomeFood> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return HomeFood.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'HomeFood {name: $name, image: $imgUrl, category: $category, origin: $origin, Tags: $instruction},  ingridient1: $ingri1,  ingridient2: $ingri2, ingridient3: $ingri3, ingridient4: $ingri4,  ingridient5: $ingri5, measure1: $measure1,  measure2: $measure2, measure3: $measure3, measure4: $measure4, measure5: $measure5,';
  }
}

class HomeCategory {
  final String category;
  final String image;

  HomeCategory(this.category, this.image);

  factory HomeCategory.fromJson(Map<String, dynamic> json) {
    return HomeCategory(json['strCategory'], json['strCategoryThumb']);
  }

  static List<HomeCategory> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return HomeCategory.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'HomeCategory {category: $category, image: $image}';
  }
}
