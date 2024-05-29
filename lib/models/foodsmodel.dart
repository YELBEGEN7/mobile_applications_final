
class FoodsModel{
  final String id;
  final String name;
  final String iconurl;
  final String drinkalternate;
  final String categoryfood;
  final String area;
  final String instructions;
  final String tags;
  final String videourl;
  final String ingredient1;
  final String ingredient2;
  final String ingredient3;
  final String ingredient4;
  final String ingredient5;
  final String ingredient6;
  final String ingredient7;
  final String ingredient8;
  final String ingredient9;
  final String ingredient10;
  final String ingredient11;
  final String ingredient12;
  final String ingredient13;
  final String ingredient14;
  final String ingredient15;
  final String ingredient16;
  final String ingredient17;
  final String ingredient18;
  final String ingredient19;
  final String ingredient20;
  final String measure1;
  final String measure2;
  final String measure3;
  final String measure4;
  final String measure5;
  final String measure6;
  final String measure7;
  final String measure8;
  final String measure9;
  final String measure10;
  final String measure11;
  final String measure12;
  final String measure13;
  final String measure14;
  final String measure15;
  final String measure16;
  final String measure17;
  final String measure18;
  final String measure19;
  final String measure20;
  final String source;
  final String imagesource;
  final String datemodifield;
  final String confirmed;
  FoodsModel(this.id, this.name, this.iconurl, this.drinkalternate, this.categoryfood, this.area, 
  this.instructions, this.tags, this.videourl, this.ingredient1, this.ingredient2, this.ingredient3, 
  this.ingredient4, this.ingredient5, this.ingredient6, this.ingredient7, this.ingredient8, this.ingredient9, 
  this.ingredient10, this.ingredient11, this.ingredient12, this.ingredient13, this.ingredient14, this.ingredient15, 
  this.ingredient16, this.ingredient17, this.ingredient18, this.ingredient19, this.ingredient20, this.measure1, this.measure2, 
  this.measure3, this.measure4, this.measure5, this.measure6, this.measure7, this.measure8, this.measure9, this.measure10, this.measure11, 
  this.measure12, this.measure13, this.measure14, this.measure15, this.measure16, this.measure17, this.measure18, this.measure19, this.measure20, 
  this.source, this.imagesource, this.datemodifield,this.confirmed);

  // ignore: empty_constructor_bodies
  FoodsModel.fromJson(Map<String,dynamic> json): 
  id=json['idMeal']?? '',
  name=json['strMeal']?? '',
  iconurl=json['strMealThumb']?? '',
  drinkalternate=json['strDrinkAlternate']?? '',
  categoryfood=json['strCategory']?? '',
  area=json['strArea']?? '',
  instructions=json['strInstructions']?? '',
  tags=json['strTags']?? '',
  videourl=json['strYoutube']?? '',
  ingredient1=json['strIngredient1']?? '',
  ingredient2=json['strIngredient2']?? '',
  ingredient3=json['strIngredient3']?? '',
  ingredient4=json['strIngredient4']?? '',
  ingredient5=json['strIngredient5']?? '',
  ingredient6=json['strIngredient6']?? '',
  ingredient7=json['strIngredient7']?? '',
  ingredient8=json['strIngredient8']?? '',
  ingredient9=json['strIngredient9']?? '',
  ingredient10=json['strIngredient10']?? '',
  ingredient11=json['strIngredient11']?? '',
  ingredient12=json['strIngredient12']?? '',
  ingredient13=json['strIngredient13']?? '',
  ingredient14=json['strIngredient14']?? '',
  ingredient15=json['strIngredient15']?? '',
  ingredient16=json['strIngredient16']?? '',
  ingredient17=json['strIngredient17']?? '',
  ingredient18=json['strIngredient18']?? '',
  ingredient19=json['strIngredient19']?? '',
  ingredient20=json['strIngredient20']?? '',
  measure1=json['strMeasure1']?? '',
  measure2=json['strMeasure2']?? '',
  measure3=json['strMeasure3']?? '',
  measure4=json['strMeasure4']?? '',
  measure5=json['strMeasure5']?? '',
  measure6=json['strMeasure6']?? '',
  measure7=json['strMeasure7']?? '',
  measure8=json['strMeasure8']?? '',
  measure9=json['strMeasure9']?? '',
  measure10=json['strMeasure10']?? '',
  measure11=json['strMeasure11']?? '',
  measure12=json['strMeasure12']?? '',
  measure13=json['strMeasure13']?? '',
  measure14=json['strMeasure14']?? '',
  measure15=json['strMeasure15']?? '',
  measure16=json['strMeasure16']?? '',
  measure17=json['strMeasure17']?? '',
  measure18=json['strMeasure18']?? '',
  measure19=json['strMeasure19']?? '',
  measure20=json['strMeasure20']?? '',
  source=json['strSource']?? '',
  imagesource=json['strImageSource'],
  datemodifield=json['dateModified'],
  confirmed=json['strCreativeCommonsConfirmed']?? '';

}