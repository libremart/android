import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:libremart/features/api/api_repository.dart';
import 'package:libremart/features/api/packing_model/packing_model.dart';
import 'package:libremart/features/api/product_model/product_model.dart';

final apiServiceProvider = Provider.autoDispose<ApiService>((ref) {
  return LMApiService(
    ref,
  );
});

abstract class ApiService {
  Future<List<PackingModel>> fromGitItemsToPackings();
  List<ProductModel> fromPackingsToProducts(
      {required List<PackingModel?> packingList});
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
  Future<List<PackingModel>> fromGitItemsToPackings() async {
    final unFilteredProducts =
        await ref.read(apiRepositoryProvider).getAllProductsFromGithubApi();
    List<PackingModel> packingList = [];
    unFilteredProducts?.map(
          (unFilteredProduct) => packingList.add(
            PackingModel(
                name: unFilteredProduct.name, url: unFilteredProduct.url),
          ),
        ) ??
        [];
    return packingList;
  }

  @override
  List<ProductModel> fromPackingsToProducts(
      {required List<PackingModel?> packingList}) {
    // WOW!
    throw UnimplementedError();
  }
}





// here we translate githubapi item for product json -> api-> productitem. ok? 
// then we move all of them to the controller -> state. 
// then we are able to show all products. 


// afterwards we wil make a function to get a speicifc item from the list .
// then we do the same things for vendors. 
