// import 'package:bazaar/features/browse/browse_model/app_entity_model.dart';
// import 'package:bazaar/main.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';


// final browseRepositoryProvider = Provider<BrowseRepository>((ref) {
//   final dio = ref.watch(dioProvider);
//   return BazaarBrowseRepository(dio: dio);
// });

// abstract class BrowseRepository {
// Future<List<AppEntity>> getRssFeed();
// // Future<List<AppEntity>> getApps();
//   // Future<List<MovieEntity>> getRecommendedMovies(double rating, String date, String genreIds);
// }

// class BazaarBrowseRepository implements BrowseRepository {
//   BazaarBrowseRepository({required this.dio});
//   final Dio dio;
  
//   @override
//   Future<List<AppEntity>> getRssFeed() async {

// try{
//   final response = await dio.get(
//       );
// }catch{

// }
//   }


// }
