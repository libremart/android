//todo: not a must, but if you need, a service is a middleware between controller and repository

import 'package:libremart/features/browse/browse_model/app_release_model.dart';
import 'package:libremart/features/scrape/scrape_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final scrapeServiceProvider = Provider<ScrapeService>((ref) {
  final scrapeRepository = ref.watch(scrapeRepositoryProvider);
  return GithubScrapeService(scrapeRepository);
});

abstract class ScrapeService {
  Future<List<AppRelease>> getAppReleases();
}

class GithubScrapeService implements ScrapeService {
  GithubScrapeService(
    this._scrapeRepository,
  );
  final ScrapeRepository _scrapeRepository;

  @override
  Future<List<AppRelease>> getAppReleases() async {
    final appReleaseEntities = await _scrapeRepository.getReleasesRss(
        repositoryPath: '/ashinch/ReadYou/');
    final appReleases =
        appReleaseEntities.map((e) => AppRelease.fromEntity(e)).toList();
    return appReleases;
  }

  // todo: implement abstract functions

}
