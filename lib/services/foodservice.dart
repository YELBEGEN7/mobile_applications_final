
import 'package:dio/dio.dart';
import 'package:mobile_applications_final/models/foodsmodel.dart';

class FoodsService{
  Future <List<FoodsModel>> getFoods(String id) async{
    String url = 'www.themealdb.com/api/json/v1/1/lookup.php?i=$id';
    final dio = Dio();
    try {
      final response = await dio.get(url);
      if (response.statusCode != 200) {
        return Future.error('A problem has occurred');
      } 
      else {
        final List data = response.data['meals'];
        final List<FoodsModel> categorymeal =
            data.map((e) => FoodsModel.fromJson(e)).toList();
        return categorymeal;
      }
    } catch (e) {
      return Future.error('Failed to load categories: $e');
    }
  }
  }