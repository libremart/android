import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:libremart/features/api/product_model/product_model.dart';

final apiServiceProvider = Provider.autoDispose<ApiService>((ref) {
  return LMApiService(
    ref,
  );
});

abstract class ApiService {
  List<ProductModel> fromDocument({required DocumentSnapshot doc});
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
  List<ProductModel> translateAllFromGitItems({required DocumentSnapshot doc}) {
    final data = doc.data()! as Map<String, dynamic>;
    return types.Message.fromJson(data);
  }
}





// here we translate githubapi item for product json -> api-> productitem. ok? 
// then we move all of them to the controller -> state. 
// then we are able to show all products. 


// afterwards we wil make a function to get a speicifc item from the list .
// then we do the same things for vendors. 
