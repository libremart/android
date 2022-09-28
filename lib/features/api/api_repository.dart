import 'dart:convert';

import 'package:libremart/features/api/github_item_model/github_item_model.dart';
import 'package:libremart/features/api/packing_model/packing_model.dart';
import 'package:libremart/features/api/product_model/product_model.dart';
import 'package:libremart/main.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';

const String libreMartApiUrl =
    'https://api.github.com/repos/libremart/products/contents';
// "https://dummyjson.com/products/1";

final apiRepositoryProvider = Provider<ApiRepository>((ref) {
  final client = ref.watch(httpClientProvider);
  return LMApiRepository(client: client);
});

abstract class ApiRepository {
  Future<List<GithubItem>> getAllProductsInGithubItemsFormat();
  Future<List<Product>> getSpecificProduct({required Packing packing});
  // Future<void> getAllProductsFromGithubApiDyanmic();
// Future<List<AppEntity>> getApps();
  // Future<List<MovieEntity>> getRecommendedMovies(double rating, String date, String genreIds);
}

class LMApiRepository implements ApiRepository {
  LMApiRepository({required this.client});
  final http.Client client;

  @override
  Future<List<GithubItem>> getAllProductsInGithubItemsFormat() async {
    final response = await client.get(Uri.parse(libreMartApiUrl));
    if (response.statusCode == 200) {
      final productsJson = jsonDecode(response.body);

      final List<Map<String, dynamic>> productsList =
          List<Map<String, dynamic>>.from(productsJson);

      return productsList
          .map((product) => GithubItem.fromJson(product))
          .toList();
    } else {
      throw UnimplementedError();
    }
  }

  @override
  Future<List<Product>> getSpecificProduct({required Packing packing}) async {
    final response = await client.get(Uri.parse('${packing.url}'));
    if (response.statusCode == 200) {
      final productJson = jsonDecode(response.body);
      final List<Map<String, dynamic>> product =
          List<Map<String, dynamic>>.from(productJson);
      print(product);
      throw UnimplementedError();
      // return Product.fromJson(product);
    } else {
      throw UnimplementedError();
    }
  }
}
  // @override
  // Future<void> getAllProductsFromGithubApiDyanmic() async {
  //   final response = await client.get(Uri.parse(libreMartApiUrl));
  //   if (response.statusCode == 200) {
  //     final productsJson = jsonDecode(response.body);
  //     final List<Map<String, dynamic>> productsList =
  //         List<Map<String, dynamic>>.from(productsJson);
  //     // print('First STRINGIFIED? ${response.body}');
  //     // print('DECODED JSON: $productsJson');
  //     final test =
  //         productsList.map((product) => GithubItem.fromJson(product)).toList();
  //     print('WOW! $test');
  //   } else {
  //     throw UnimplementedError();
  //   }
  // }

