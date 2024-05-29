import 'package:dio/dio.dart';
import 'package:mobile_applications_final/models/categorymealmodel.dart';

class CategoryMealService {
  Future<List<Categorymealmodel>> getCategorymeal(String name) async {
    String url = 'https://www.themealdb.com/api/json/v1/1/filter.php?c=$name';
    final dio = Dio();

    try {
      final response = await dio.get(url);
      if (response.statusCode != 200) {
        return Future.error('A problem has occurred');
      } else {
        print(url);
        final List data = response.data['meals'];
        final List<Categorymealmodel> categorymeal =
            data.map((e) => Categorymealmodel.fromJson(e)).toList();
        return categorymeal;
      }
    } catch (e) {
      return Future.error('Failed to load categories: $e');
    }
  }
}
