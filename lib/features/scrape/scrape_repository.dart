import 'package:libremart/features/browse/releases/app_release_entity.dart';
import 'package:libremart/main.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webfeed_plus/webfeed_plus.dart';

const String githubBaseUrl = 'https://www.github.com';
const String githubEndingUrl = 'releases.atom';

final scrapeRepositoryProvider = Provider<ScrapeRepository>((ref) {
  final client = ref.watch(httpClientProvider);
  return GithubScrapeRepository(client: client);
});

abstract class ScrapeRepository {
  Future<List<AppReleaseEntity>> getReleasesRss(
      {required String repositoryPath});
// Future<List<AppEntity>> getApps();
  // Future<List<MovieEntity>> getRecommendedMovies(double rating, String date, String genreIds);
}

class GithubScrapeRepository implements ScrapeRepository {
  GithubScrapeRepository({required this.client});
  final http.Client client;

  @override
  Future<List<AppReleaseEntity>> getReleasesRss(
      {required String repositoryPath}) async {
    final requestUrl = '$githubBaseUrl$repositoryPath$githubEndingUrl';

    final response = await client.get(Uri.parse(requestUrl));
    final feed = AtomFeed.parse(response.body);
    final List<AtomItem>? releasesAtomList = feed.items;
    final releasesList =
        releasesAtomList!.map((e) => AppReleaseEntity.fromAtom(e)).toList();
    return releasesList;
  }
}
