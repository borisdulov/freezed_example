import 'package:dio/dio.dart';
import 'package:freezed_example/models/cart_model.dart';
import 'package:freezed_example/provider/fakestoreapi_paths.dart';

class FakeStoreApiProvider {
  final Dio _dio = Dio();

  FakeStoreApiProvider() {
    _dio.options.baseUrl = FakeStoreApiPaths.baseUrl;
  }

  Future<List<CartModel>> getCarts() async {
    try {
      final response = await _dio.get(FakeStoreApiPaths.carts);
      final cartJsonList = response.data as List<dynamic>;
      final result = cartJsonList.map((e) => CartModel.fromJson(e)).toList();
      return result;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
