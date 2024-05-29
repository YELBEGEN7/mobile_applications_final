

class Categorymealmodel{
  final String iconurl;
  final String id;
  final String name;

  Categorymealmodel(this.iconurl,this.id,this.name);

  Categorymealmodel.fromJson(Map<String,dynamic> json):
  iconurl=json['strMealThumb']?? '',
  id=json['idMeal']?? '',
  name=json['strMeal']?? '';

}

