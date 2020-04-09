import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/domain/entities/services/service.dart';
import 'package:app_pym/domain/entities/services/action.dart';
import 'package:app_pym/domain/repositories/services/services_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@injectable
class FetchServices extends Usecase<Future<List<Service>>, NoParams> {
  final ServicesRepository repository;

  const FetchServices(this.repository);

  @override
  Future<List<Service>> call(NoParams params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
