import 'dart:convert';

import 'package:libremart/features/api/github_item_model/github_item_model.dart';
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
  Future<List<GithubItemModel>>? getAllProducts();
// Future<List<AppEntity>> getApps();
  // Future<List<MovieEntity>> getRecommendedMovies(double rating, String date, String genreIds);
}

class LMApiRepository implements ApiRepository {
  LMApiRepository({required this.client});
  final http.Client client;

  @override
  Future<List<GithubItemModel>>? getAllProducts() async {
    List<GithubItemModel>? productList;
    final response = await client.get(Uri.parse(libreMartApiUrl));
    if (response.statusCode == 200) {
      final productsJson = jsonDecode(response.body);
      return productList = productsJson
          .map((product) => GithubItemModel.fromJson(product))
          .toList();
    } else {
      print("Sorry, request is dead");
      return Future.value(productList);
    }
  }
}
