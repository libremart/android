import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:libremart/features/api/api_repository.dart';
import 'package:libremart/features/api/github_item_model/github_item_model.dart';
import 'package:libremart/features/api/packing_model/packing_model.dart';
import 'package:libremart/features/api/product_model/product_model.dart';

final apiServiceProvider = Provider.autoDispose<ApiService>((ref) {
  return LMApiService(
    ref,
  );
});

abstract class ApiService {
  Future<List<Packing>> fromGitItemsToPackings();
  Future<List<Product>> fromPackingsToProducts(
      {required List<Packing> packingList});
  // List<ProductModel> fromGitItemsToPackings(
  // {required List<PackingModel?> packingList});
  // List<types.Message> resortMessages({required List<types.Message> messages});
  // List<types.Message> translateWatchedList(
  //     {required QuerySnapshot<Object?> data});
}

class LMApiService implements ApiService {
  LMApiService(
    this.ref,
  );
  final Ref ref;

  @override
  Future<List<Packing>> fromGitItemsToPackings() async {
    final List<GithubItem> githubItems = await ref
        .read(apiRepositoryProvider)
        .getAllProductsInGithubItemsFormat();

    return githubItems.map((item) => Packing.fromGithubItem(item)).toList();

    // githubItems.map(
    //       (githubItemProduct) => packingList.add(
    //         Packing(name: githubItemProduct.name, url: githubItemProduct.url),
    //       ),
    //     ) ??
    //     [];
    // return packingList;
  }

  @override
  Future<List<Product>> fromPackingsToProducts(
      {required List<Packing> packingList}) async {
    List<Product> products = [];

    for (var packing in packingList) {
      final List<Product> product = await ref
          .read(apiRepositoryProvider)
          .getSpecificProduct(packing: packing);

      products = product;
    }
    return products;
  }
}

// here we translate githubapi item for product json -> api-> productitem. ok? 
// then we move all of them to the controller -> state. 
// then we are able to show all products. 


// afterwards we wil make a function to get a speicifc item from the list .
// then we do the same things for vendors. 
