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
  Future<List<GithubItem>>? getAllProductsFromGithubApi();
  Future<List<dynamic>> getAllProductsFromGithubApiDyanmic();
  Future<void> fuckThisShit();
// Future<List<AppEntity>> getApps();
  // Future<List<MovieEntity>> getRecommendedMovies(double rating, String date, String genreIds);
}

class LMApiRepository implements ApiRepository {
  LMApiRepository({required this.client});
  final http.Client client;

  @override
  Future<List<GithubItem>>? getAllProductsFromGithubApi() async {
    T? cast<T>(x) => x is T ? x : null;

    final response = await client.get(Uri.parse(libreMartApiUrl));
    if (response.statusCode == 200) {
      final productsJson = jsonDecode(response.body);
      List<Map<String, dynamic>>? wow =
          cast<List<Map<String, dynamic>>>(productsJson);
      return wow!.map((product) => GithubItem.fromDocument(product)).toList();
    } else {
      throw UnimplementedError();
    }
  }

  @override
  Future<List<dynamic>> getAllProductsFromGithubApiDyanmic() async {
    final response = await client.get(Uri.parse(libreMartApiUrl));
    if (response.statusCode == 200) {
      final productsJson = jsonDecode(response.body);
      return productsJson
          .map((product) => GithubItem.fromDocument(product))
          .toList();
    } else {
      throw UnimplementedError();
    }
  }

  @override
  Future<void> fuckThisShit() async {
    var productList;
    final response = await client.get(Uri.parse(libreMartApiUrl));
    if (response.statusCode == 200) {
      final List<dynamic> productsJson = jsonDecode(response.body);
      // print("FUCK THIS SHIT!!! + $productsJson");
      // print("Products Json Type!!! + ${productsJson.runtimeType}");
      print("Products Json Type!!! + ${productsJson.runtimeType}");
    } else {
      print("Sorry, request is dead");
      return Future.value(productList);
    }
  }
}
