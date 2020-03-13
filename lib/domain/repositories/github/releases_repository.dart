/// Releases Repository
///
/// Après avoir instancié un entity, cet entity doit être accessible peu
/// importe la source de données.
import 'package:app_pym/domain/entities/github/release.dart';

abstract class ReleasesRepository {
  Future<List<GithubRelease>> getReleases(String repo);
}
