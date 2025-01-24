import 'package:flutter/foundation.dart';
import 'package:smartwatch/app/data/models/product_model_api.dart';
import 'package:smartwatch/app/shared/constanta.dart';

class ProductService {
  Future<Product?> getProducts() async {
    try {
      final response = await dio.get('$url/products/');
      if (kDebugMode) {
        print(response.data);
      }
      if (response.statusCode == 200) {
        return Product.fromJson(response.data);
      }
      return null;
    } catch (e) {
      return throw Exception(e);
    }
  }

  Future<ProductElement?> getDetailsProducts({required int id}) async {
    try {
      final response = await dio.get('$url/products/$id');
      if (kDebugMode) {
        print(response.data);
      }
      if (response.statusCode == 200) {
        return ProductElement.fromJson(response.data);
      }
      return null;
    } catch (e) {
      return throw Exception(e);
    }
  }
}
