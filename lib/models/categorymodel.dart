class CategoryModel {
  final String id;
  final String name;
  final String iconurl;
  final String about;

  CategoryModel(this.id, this.name, this.iconurl, this.about);

  CategoryModel.fromJson(Map<String, dynamic> json)
      : id = json['idCategory'] ?? '',
        name = json['strCategory'] ?? '',
        iconurl = json['strCategoryThumb'] ?? '',
        about = json['strCategoryDescription'] ?? '';
}
