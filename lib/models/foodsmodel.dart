class FoodsModel {
  final String id;
  final String name;
  final String iconUrl;
  final String drinkAlternate;
  final String categoryFood;
  final String area;
  final String instructions;
  final String tags;
  final String videoUrl;
  final List<String> ingredients;
  final List<String> measures;
  final String source;
  final String imageSource;
  final String dateModified;
  final String confirmed;

  FoodsModel(
    this.id,
    this.name,
    this.iconUrl,
    this.drinkAlternate,
    this.categoryFood,
    this.area,
    this.instructions,
    this.tags,
    this.videoUrl,
    this.ingredients,
    this.measures,
    this.source,
    this.imageSource,
    this.dateModified,
    this.confirmed,
  );

  FoodsModel.fromJson(Map<String, dynamic> json)
      : id = json['idMeal'] ?? '',
        name = json['strMeal'] ?? '',
        iconUrl = json['strMealThumb'] ?? '',
        drinkAlternate = json['strDrinkAlternate'] ?? '',
        categoryFood = json['strCategory'] ?? '',
        area = json['strArea'] ?? '',
        instructions = json['strInstructions'] ?? '',
        tags = json['strTags'] ?? '',
        videoUrl = json['strYoutube'] ?? '',
        ingredients = _parseIngredients(json),
        measures = _parseMeasures(json),
        source = json['strSource'] ?? '',
        imageSource = json['strImageSource'] ?? '',
        dateModified = json['dateModified'] ?? '',
        confirmed = json['strCreativeCommonsConfirmed'] ?? '';

  static List<String> _parseIngredients(Map<String, dynamic> json) {
    List<String> ingredients = [];
    for (int i = 1; i <= 20; i++) {
      String? ingredient = json['strIngredient$i'] as String?;
      if (ingredient != null && ingredient.isNotEmpty && ingredient != 'null') {
        ingredients.add(ingredient);
      }
    }
    return ingredients;
  }

  static List<String> _parseMeasures(Map<String, dynamic> json) {
    List<String> measures = [];
    for (int i = 1; i <= 20; i++) {
      String? measure = json['strMeasure$i'] as String?;
      if (measure != null && measure.isNotEmpty && measure != 'null') {
        measures.add(measure);
      }
    }
    return measures;
  }
}
