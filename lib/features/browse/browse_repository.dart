// import 'package:bazaar/features/browse/releases/app_release_entity.dart';
// import 'package:bazaar/main.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// final browseRepositoryProvider = Provider<BrowseRepository>((ref) {
//   final dio = ref.watch(dioProvider);
//   return GitHubBrowseRepository(dio: dio);
// });

// abstract class BrowseRepository {
//   Future<List<AppReleaseEntity>> getRssFeed();
// // Future<List<AppEntity>> getApps();
//   // Future<List<MovieEntity>> getRecommendedMovies(double rating, String date, String genreIds);
// }

// class GitHubBrowseRepository implements BrowseRepository {
//   GitHubBrowseRepository({required this.dio});
//   final Dio dio;

//   @override
//   Future<List<AppReleaseEntity>> getRssFeed() async {
//     final response = await dio.get('ashinch/ReadYou/releases.atom',queryParameters: );

//   }
// }



// // try{
// //   final response = await dio.get(
// //       );
// // }catch{

// // }