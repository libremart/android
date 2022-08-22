//todo: not a must, but if you need, a service is a middleware between controller and repository

import 'package:libremart/features/browse/browse_model/app_release_model.dart';
import 'package:libremart/features/browse/browse_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final browseServiceProvider = Provider<BrowseService>((ref) {
  final browseRepository = ref.watch(browseRepositoryProvider);
  return GithubBrowseService(browseRepository);
});

abstract class BrowseService {
  Future<List<AppRelease>> getAppReleases();
}

class GithubBrowseService implements BrowseService {
  GithubBrowseService(
    this._browseRepository,
  );
  final BrowseRepository _browseRepository;

  @override
  Future<List<AppRelease>> getAppReleases() async {
    final appReleaseEntities = await _browseRepository.getReleasesRss(
        repositoryPath: '/ashinch/ReadYou/');
    final appReleases =
        appReleaseEntities.map((e) => AppRelease.fromEntity(e)).toList();
    return appReleases;
  }

  // todo: implement abstract functions

}
