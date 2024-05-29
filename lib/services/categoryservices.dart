import 'package:dio/dio.dart';
import 'package:mobile_applications_final/models/categorymodel.dart';

class CategoryService {
  Future<List<CategoryModel>> getCategories() async {
    const String url = 'https://www.themealdb.com/api/json/v1/1/categories.php';

    final dio = Dio();

    try {
      final response = await dio.get(url);
      if (response.statusCode != 200) {
        return Future.error('A problem has occurred');
      } else {
        final List data = response.data['categories'];
        final List<CategoryModel> categoryList =
            data.map((e) => CategoryModel.fromJson(e)).toList();
        return categoryList;
      }
    } catch (e) {
      return Future.error('Failed to load categories: $e');
    }
  }
}
